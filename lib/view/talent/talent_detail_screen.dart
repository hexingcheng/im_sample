import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
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
            body: Column(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const TalentView(
                        imgList: [
                          "assets/images/splash.png",
                          "assets/images/banner.png",
                          "assets/images/logo.png"
                        ],
                      ),
                      SizedBox(height: 18),
                      const Text(
                        'ふたばはすみ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: OnlyliveColor.darkPurple),
                      ),
                      SizedBox(height: 18),
                      Container(
                        width: 117,
                        height: 32,
                        child: RoundRectButton(
                          onPressed: () => {},
                          text: 'お気に入り',
                          backgroundColor: OnlyliveColor.lightPurple,
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      NextSchedule(),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      const Text("自己紹介",
                          style: TextStyle(color: OnlyliveColor.darkPurple)),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TalentSns(
                                url:
                                    "https://instagram.com/ry___517?utm_medium=copy_link"),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () =>
                                  openUrl(url: "https://www.google.com/"),
                              child: const Text("リンクリンクリンク"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(),
                            const Text(
                              "次回以降のスケジュール",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: OnlyliveColor.darkPurple),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
