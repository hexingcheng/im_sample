import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/call/finsh_call_screen.dart';
import 'package:onlylive/view/call/vm/call_vm.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';
import 'package:provider/provider.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_video_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);
  static Route<dynamic> route(
    CallTransaction callTransaction,
  ) =>
      MaterialPageRoute<dynamic>(
        builder: (_) => const CallScreen(),
        settings: RouteSettings(
          arguments: {"call_transaction": callTransaction},
        ),
      );
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    return ChangeNotifierProvider<CallVM>(
      create: (context) => CallVM(
        callTransaction: args["call_transaction"] as CallTransaction,
      ),
      builder: (context, _) {
        final vm = context.read<CallVM>();
        // vm.permissionRequest();
        return Scaffold(
          body: SafeArea(
            child: Selector<CallVM, bool>(
              selector: (context, model) => model.isLoading,
              builder: (context, isLoading, child) {
                return isLoading
                    ? const Loading(false)
                    : Stack(
                        children: <Widget>[
                          TRTCCloudVideoView(
                            viewType: 2,
                            onViewCreated: (viewId) => {vm.renderView(viewId)},
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
                                Selector<CallVM, bool>(
                                  selector: (context, model) =>
                                      model.showCautionPopUp,
                                  builder: (context, showCautionPopUp, child) =>
                                      showCautionPopUp
                                          ? Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.6),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(8)),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: OnlyliveColor
                                                              .darkPurple,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: GestureDetector(
                                                        onTap: vm
                                                            .closeCautionPopUp,
                                                        child: const Icon(
                                                            Icons.close,
                                                            size: 20,
                                                            color: OnlyliveColor
                                                                .grey),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "#${vm.talent.displayName}とonlylive",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Consumer<CallVM>(
                                  builder: (context, vm, child) {
                                    return Text(
                                      vm.remainigTime.toMinSec(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 43),
                              child: TalentIcon(vm.talent),
                            ),
                          ),
                          Selector<CallVM, bool>(
                            selector: (context, model) =>
                                model.isFinishedFanMeeting,
                            builder: (context, isFinishedFanMeeting, child) {
                              return IgnorePointer(
                                ignoring: !isFinishedFanMeeting,
                                child: FinishCallScreen(
                                  showMe: isFinishedFanMeeting,
                                  talentImage: vm.talent.mainSquareImageUrl,
                                ),
                              );
                            },
                          ),
                        ],
                      );
              },
            ),
          ),
        );
      },
    );
  }
}

class TalentIcon extends StatelessWidget {
  const TalentIcon(this.talent, {Key? key}) : super(key: key);
  final Talent talent;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              context: context,
              builder: (context2) => Container(
                height: 388,
                padding: const EdgeInsets.all(20),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: CachedNetworkImage(
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                imageUrl: talent.mainSquareImageUrl,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              talent.displayName,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: OnlyliveColor.darkPurple,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context2);
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                            color: OnlyliveColor.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Text(
                      "自己紹介",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: OnlyliveColor.darkPurple),
                    ),
                    const SizedBox(height: 24),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          talent.introduction,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: OnlyliveColor.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: RoundedIconWithGradientBorder(
            imageUrl: talent.mainSquareImageUrl,
            width: 63,
            borderWidth: 3,
          ),
        ),
        Positioned(
          top: -4,
          right: -2,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                gradient: OnlyliveColor.gradient,
              ),
              child: const Icon(
                Icons.call,
                size: 12.8,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
