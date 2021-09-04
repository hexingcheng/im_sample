import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/snippets/url_launcher.dart';
import 'package:onlylive/widgets/atoms/schedule.dart';
import 'package:onlylive/widgets/molecules/talent_view.dart';
import 'package:provider/provider.dart';
import 'package:onlylive/widgets/organisms/complete_reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_notes_dialog.dart';
import 'package:onlylive/widgets/atoms/sns_icons.dart';

class TalentDetailScreen extends StatelessWidget {
  const TalentDetailScreen({required this.talentID, Key? key})
      : super(key: key);
  final String talentID;

  static Route<dynamic> route(String talentID) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => TalentDetailScreen(talentID: talentID),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TalentDetailVM>(
      create: (context) => TalentDetailVM(talentID),
      builder: (context, child) {
        final vm = context.read<TalentDetailVM>();

        return Scaffold(
          body: FutureBuilder(
            future: vm.initState(),
            builder: (context, snapShot) {
              if (!vm.initilized) {
                return const Loading(true);
              }
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            TalentView(imgList: vm.profileImageUrls),
                            SafeArea(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Back(context),
                            ))
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          vm.displayName,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: OnlyliveColor.darkPurple),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 117,
                          height: 32,
                          child: context.select<TalentDetailVM, bool>(
                                  (vm) => vm.isFollowed)
                              ? GradientButton(
                                  onPressed:
                                      context.select<TalentDetailVM, bool>(
                                              (vm) => vm.isLoggedIn)
                                          ? vm.unFollow
                                          : () => showDialog(
                                              context: context,
                                              builder: (_) => const SizedBox()),
                                  text: "登録済み",
                                  textColor: Colors.white,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  colors: const [
                                    Color(0xff8EC5FC),
                                    Color(0xffE0C3FC)
                                  ],
                                )
                              : RoundRectButton(
                                  onPressed:
                                      context.select<TalentDetailVM, bool>(
                                              (vm) => vm.isLoggedIn)
                                          ? vm.follow
                                          : () => showDialog(
                                              context: context,
                                              builder: (_) => const SizedBox()),
                                  text: "お気に入り",
                                  textColor: OnlyliveColor.purple,
                                  backgroundColor: Colors.white,
                                  borderColor: OnlyliveColor.purple,
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                        const SizedBox(height: 24),
                        const Divider(),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text("自己紹介",
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                            color: OnlyliveColor.darkPurple)),
                              ),
                              const SizedBox(height: 24),
                              SizedBox(
                                width: double.infinity,
                                child: Text(vm.introduction,
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: OnlyliveColor.grey)),
                              ),
                              if (vm.enableSNSUrlList.values.contains(true))
                                Container(
                                  padding: const EdgeInsets.only(top: 18),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: vm.enableSNSUrlList.entries
                                        .map((value) {
                                      var url = "";
                                      Widget icon = const SizedBox.shrink();
                                      switch (value.key) {
                                        case SNSType.twitter:
                                          url = vm.twitterUrl;
                                          icon = SvgPicture.asset(
                                              "assets/icons/twitter.svg");
                                          break;
                                        case SNSType.tiktok:
                                          url = vm.tiktokUrl;
                                          icon = SvgPicture.asset(
                                              "assets/icons/tiktok.svg");
                                          break;
                                        case SNSType.youtube:
                                          url = vm.youtubeUrl;
                                          icon = SvgPicture.asset(
                                              "assets/icons/youtube.svg");
                                          break;
                                        case SNSType.instagram:
                                          url = vm.instagramUrl;
                                          icon = Image.asset(
                                              "assets/icons/instagram.png");
                                          break;
                                      }
                                      return SNSIcon(
                                        url: url,
                                        icon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: icon),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              if (vm.isEnableCustomLink)
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GestureDetector(
                                      onTap: () =>
                                          openUrl(url: vm.customLinkUrl),
                                      child: Text(vm.customLinkName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: OnlyliveColor.purple)),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const Divider(),
                        const SizedBox(height: 24),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          width: double.infinity,
                          child: Text("次回以降のスケジュール",
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: OnlyliveColor.darkPurple)),
                        ),
                        // const SizedBox(height: 23),
                        SizedBox(
                          height: 300,
                          child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: List.generate(
                                vm.schedules.length,
                                (index) => Schedule(
                                      vm.schedules[index].entries.first.key,
                                      vm.schedules[index].entries.first.value,
                                    )),
                          ),
                        ),
                        const SizedBox(height: 100),

                        const SizedBox(height: 60)
                      ],
                    ),
                  ),
                  if (vm.hasNowFanMeeting)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: SafeArea(
                          child: GestureDetector(
                            child: SizedBox(
                              width: 215,
                              height: 52,
                              child: vm.isReserved
                                  ? Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: OnlyliveColor.purple
                                            .withOpacity(0.5),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "通話予約済み",
                                        style: TextStyle(
                                          color: OnlyliveColor.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                  : RoundRectButton(
                                      text: "通話予約へ",
                                      textColor: OnlyliveColor.white,
                                      backgroundColor: OnlyliveColor.purple,
                                      onPressed: () => {
                                        showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              if (vm.isLoggedIn) {
                                                return ReservationDialog(
                                                  style: vm.nowFanMeetingStyle,
                                                  imageUrl:
                                                      vm.mainRectangleImageUrl,
                                                  displayName: vm.displayName,
                                                  balance: vm.balance,
                                                  unitCoin: vm.unitCoin,
                                                  waitingFanNum: vm.reservedNum,
                                                  secondsPerReserved:
                                                      vm.secondsPerReserved,
                                                  onPressedButton: () async {
                                                    Navigator.pop(
                                                        dialogContext);
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext2) =>
                                                          ReservationNotesDialog(
                                                        onPressedButton:
                                                            () async {
                                                          await vm.createReservation(
                                                              vm.nowFanMeetingwId);
                                                          Navigator.pop(
                                                              dialogContext2);
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext3) =>
                                                                    CompleteReservationDialog(
                                                              vm.mainRectangleImageUrl,
                                                            ),
                                                          );
                                                        },
                                                        talentImageUri: vm
                                                            .mainSquareImageUrl,
                                                        style: vm
                                                            .nowFanMeetingStyle,
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                              // TODO
                                              return const SizedBox.shrink();
                                            }),
                                      },
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
