import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/call/components/block_view.dart';
import 'package:onlylive/view/call/components/call_action_icon.dart';
import 'package:onlylive/view/call/components/connecting_view.dart';
import 'package:onlylive/view/call/components/disconnect_animation_view.dart';
import 'package:onlylive/view/call/components/extension_menu.dart';
import 'package:onlylive/view/call/complete_call_screen.dart';
import 'package:onlylive/view/call/components/network_error_view.dart';
import 'package:onlylive/view/call/components/save_cheki_view.dart';
import 'package:onlylive/view/call/components/talent_profile_button.dart';
import 'package:onlylive/view/call/vm/call_vm.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:provider/provider.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_video_view.dart';

class CallScreen extends StatelessWidget {
  const CallScreen(this.callTransaction, {Key? key}) : super(key: key);
  final CallTransaction callTransaction;
  static Route<dynamic> route(
    CallTransaction callTransaction,
  ) =>
      MaterialPageRoute<dynamic>(
        builder: (_) => CallScreen(callTransaction),
      );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CallVM>(
      create: (context) => CallVM(
          reservationId: callTransaction.reservationID,
          fanMeetingId: callTransaction.fanMeetingID),
      builder: (context, _) {
        final vm = context.read<CallVM>();
        // vm.permissionRequest();
        return Scaffold(
          backgroundColor: Colors.blue.withOpacity(0.4),
          body: FutureBuilder(
              future: vm.initState(),
              builder: (context, snap) {
                if (vm.initilized) {
                  return Stack(
                    children: <Widget>[
                      TRTCCloudVideoView(
                        viewType: 2,
                        onViewCreated: vm.renderView,
                      ),
                      Container(
                        height: 152,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.7],
                            colors: [
                              const Color(0xff8EC5FC).withOpacity(.3),
                              const Color(0xffE0C3FC).withOpacity(0),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 54,
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            context.select<CallVM, bool>(
                                    (vm) => vm.showCautionPopUp)
                                ? Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.6),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 11,
                                      ),
                                      width: 339,
                                      height: 48,
                                      child: Stack(
                                        children: [
                                          const Center(
                                            child: Text(
                                              "あなたの顔は映りません",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: OnlyliveColor.darkPurple,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                              onTap: vm.closeCautionPopUp,
                                              child: const Icon(Icons.close,
                                                  size: 20,
                                                  color: OnlyliveColor.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            const SizedBox(height: 10),
                            Text(
                              "#${vm.talentDisplayName}とonlylive",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              context.select<CallVM, String>(
                                  (vm) => vm.remainingTime),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 42,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CallActionIcon(
                                assetName: "camera",
                                text: "写真をもらう",
                                isEnabled: context.select<CallVM, bool>(
                                    (vm) => vm.isEnabledCheki),
                                onPressed: vm.chekiRequest),
                            TalentActionButton(
                                mainSquareImageUrl: vm.talentMainSquareImage,
                                displayName: vm.talentDisplayName,
                                introduction: vm.talentIntroduction),
                            CallActionIcon(
                              assetName: "extension",
                              isEnabled: context.select<CallVM, bool>(
                                  (vm) => vm.isEnabledExtnsion),
                              text: "延長する",
                              onPressed: () {
                                showModalBottomSheet(
                                  barrierColor: Colors.transparent,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return ExtensionMenu(
                                      onExtension: vm.extension,
                                      secondsPerReservation:
                                          vm.secondsPerReservation,
                                      itemCode: vm.itemCode,
                                      balance: vm.balance,
                                      validExtensionCount: vm.validExtensionNum,
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      context.select<CallVM, bool>(
                              (vm) => vm.hasDuringChekiShooting)
                          ? Center(
                              child:
                                  Image.asset("assets/images/cheki_frame.png"),
                            )
                          : const SizedBox.shrink(),
                      IgnorePointer(
                        ignoring: !vm.isFinishedFanMeeting,
                        child: DisconnectAnimationView(
                          showMe: vm.isFinishedFanMeeting,
                          child: Center(
                            child: (() {
                              switch (context.select<CallVM, CallStatus>(
                                  (value) => value.callStatus)) {
                                case CallStatus.complete:
                                  return CompleteCallView(
                                      vm.talentMainSquareImage);
                                case CallStatus.saveCheki:
                                  return SaveChekiView(
                                      "https://storage.googleapis.com/dev-barry-image/2021-08-19/CsekdfunHdaMMWmCOLSoNNXpq");
                                case CallStatus.block:
                                  return const BlockView();
                                case CallStatus.networkError:
                                  return NetworkErrorView(
                                    annotationID: vm.annotaionID,
                                    fanUUID: vm.fanUUID,
                                  );
                                case CallStatus.duringCall:
                                case CallStatus.connecting:
                                  return const SizedBox();
                              }
                            })(),
                          ),
                        ),
                      ),
                      if (context.select<CallVM, CallStatus>(
                              (vm) => vm.callStatus) ==
                          CallStatus.connecting)
                        ConnectionView()
                    ],
                  );
                } else {
                  return const Loading(true);
                }
              }),
        );
      },
    );
  }
}
