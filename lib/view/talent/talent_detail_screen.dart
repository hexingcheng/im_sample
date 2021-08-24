import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/widgets/atoms/url_launcher.dart';
import 'package:onlylive/widgets/molecules/next_schedule.dart';
import 'package:onlylive/widgets/molecules/talent_view.dart';
import 'package:provider/provider.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/widgets/molecules/talent_sns.dart';

class TalentDetailScreen extends StatelessWidget {
  const TalentDetailScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const TalentDetailScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TalentDetailVM>(
        create: (context) => TalentDetailVM(),
        builder: (context, child) {
          final vm = context.watch<TalentDetailVM>();
          return Scaffold(
              body: RefreshIndicator(
            onRefresh: vm.updateTalentDetail,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TalentView(
                          imgList: vm.imageList,
                        ),
                        const SizedBox(height: 24),
                        Text(vm.talentName,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: OnlyliveColor.darkPurple)),
                        const SizedBox(height: 16),
                        Container(
                          width: 117,
                          height: 32,
                          child: GradientButton(
                            onPressed: () => {},
                            text: 'お気に入り',
                            textColor: Colors.white,
                            colors: [
                              Color(0xff8EC5FC),
                              Color(0xffE0C3FC),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Divider(),
                        const SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.only(left: 20),
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
                                child: Text(vm.introduction,
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
                                    TalentSns(url: vm.url),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          openUrl(url: vm.customLinkUrl),
                                      child: Text(vm.customLinkName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  color: OnlyliveColor.purple)),
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
                        const SizedBox(height: 23),
                        const NextSchedule(),
                        const SizedBox(height: 100)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 215,
                  height: 52,
                  child: RoundRectButton(
                    text: "あああ",
                    textColor: OnlyliveColor.white,
                    backgroundColor: OnlyliveColor.purple,
                    onPressed: () => {},
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ));
        });
  }
}
