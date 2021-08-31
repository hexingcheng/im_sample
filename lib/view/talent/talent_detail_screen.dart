import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:onlylive/view/home/vm/home_vm.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/snippets/url_launcher.dart';
import 'package:onlylive/widgets/molecules/next_schedule.dart';
import 'package:onlylive/widgets/molecules/talent_view.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/widgets/organisms/complete_reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_notes_dialog.dart';
import 'package:onlylive/widgets/molecules/talent_sns.dart';

class TalentDetailScreen extends StatelessWidget {
  const TalentDetailScreen({required this.talentID, Key? key})
      : super(key: key);
  final String talentID;

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const TalentDetailScreen(talentID: ""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TalentDetailVM>(
        create: (context) => TalentDetailVM(talentID: talentID),
        builder: (context, child) {
          final vm = context.watch<TalentDetailVM>();
          final homeVM = HomeVM();
          final schedules = vm.schedules;
          return Scaffold(
              body: Container(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TalentView(imgList: vm.talentImages),
                        const SizedBox(height: 24),
                        Text(vm.talent.displayName,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: OnlyliveColor.darkPurple)),
                        const SizedBox(height: 16),
                        if (vm.isFollow == true)
                          Container(
                            width: 117,
                            height: 32,
                            child: GradientButton(
                              onPressed: () => {
                                vm.isFollowFunc(),
                              },
                              text: "登録ずみ",
                              textColor: Colors.white,
                              colors: [Color(0xff8EC5FC), Color(0xffE0C3FC)],
                            ),
                          ),
                        if (vm.isFollow == null)
                          Container(
                            width: 117,
                            height: 32,
                            child: RoundRectButton(
                              onPressed: () => {vm.isFollowFunc()},
                              text: "お気に入り",
                              textColor: OnlyliveColor.darkPurple,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        const SizedBox(height: 24),
                        const Divider(),
                        const SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Container(
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
                              Container(
                                width: double.infinity,
                                child: Text(vm.talent.introduction,
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: OnlyliveColor.grey)),
                              ),
                              const SizedBox(height: 18),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (vm.talent.twitterUrl != null)
                                      TalentSns(
                                          url: vm.talent.twitterUrl,
                                          icon: FontAwesomeIcons.twitter,
                                          color: Colors.blueAccent),
                                    const SizedBox(width: 10),
                                    if (vm.talent.instagramUrl != null)
                                      TalentSns(
                                          url: vm.talent.instagramUrl,
                                          icon: FontAwesomeIcons.instagram,
                                          color: Colors.red),
                                    const SizedBox(width: 10),
                                    if (vm.talent.youtubeUrl != null)
                                      TalentSns(
                                          url: vm.talent.youtubeUrl,
                                          icon: FontAwesomeIcons.youtube,
                                          color: Colors.red),
                                    const SizedBox(width: 10),
                                    if (vm.talent.tiktokUrl != null)
                                      TalentSns(
                                          url: vm.talent.tiktokUrl,
                                          icon: FontAwesomeIcons.tiktok,
                                          color: Colors.blueGrey),
                                    const SizedBox(width: 10),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (vm.talent.customLinkUrl != null &&
                                        vm.talent.customLinkName != null)
                                      GestureDetector(
                                        onTap: () => openUrl(
                                            url: vm.talent.customLinkUrl),
                                        child: Text(vm.talent.customLinkName,
                                            // child: Text("vm.talent.customLinkName",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                    color:
                                                        OnlyliveColor.purple)),
                                      ),
                                  ],
                                ),
                              ),
                            ])),
                        const SizedBox(height: 24),
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
                        NextSchedule(schedules),
                        const SizedBox(height: 100)
                      ],
                    ),
                  ),
                ),
                if (vm.meetingState == "now" && vm.isReserved == null)
                  GestureDetector(
                    child: Container(
                      width: 215,
                      height: 52,
                      child: RoundRectButton(
                        text: "通話予約へ",
                        textColor: OnlyliveColor.white,
                        backgroundColor: OnlyliveColor.purple,
                        onPressed: () => {
                          showDialog(
                            context: context,
                            builder: (dialogContext) {
                              final fanMeeting = homeVM
                                  .fanMeetingAndReserved[HomeListType.future]!
                                  .first;
                              return ReservationDialog(
                                fanMeeing: fanMeeting.fanMeeting,
                                balance: 1000,
                                onPressedButton: () async {
                                  Navigator.pop(dialogContext);
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext2) =>
                                        ReservationNotesDialog(
                                      onPressedButton: () async {
                                        await vm.createReservation(
                                            fanMeeting.fanMeeting.id);
                                        Navigator.pop(dialogContext2);
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext3) =>
                                              CompleteReservationDialog(
                                            fanMeeting.fanMeeting.talent
                                                .mainRectangleImageUrl,
                                          ),
                                        );
                                      },
                                      talentImageUri: fanMeeting
                                          .fanMeeting.talent.mainSquareImageUrl,
                                      style: fanMeeting.fanMeeting.style,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        },
                      ),
                    ),
                  ),
                if (vm.meetingState == "now" && vm.isReserved == true)
                  Container(
                    width: 215,
                    height: 52,
                    child: RoundRectButton(
                      text: "通話予約済み",
                      textColor: OnlyliveColor.white,
                      backgroundColor: OnlyliveColor.purple.withOpacity(0.5),
                      onPressed: () => null,
                    ),
                  ),
                const SizedBox(height: 60)
              ],
            ),
          ));
        });
  }
}
