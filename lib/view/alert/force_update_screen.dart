import 'package:flutter/material.dart';
import 'package:onlylive/widgets/atoms/url_launcher.dart';
import 'package:onlylive/widgets/templates/alert_screen.dart';

class ForceUpdateScreen extends StatelessWidget {
  const ForceUpdateScreen({Key? key}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: "forceUpdate"),
      builder: (_) => const ForceUpdateScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertScreen(
        title: "アップデートのお知らせ",
        subTitle: "アプリの改善を行いました。最新版のアプリにアップデートしてください",
        onPressed: () => openUrl(url: "https://twitter.com/onlylive_jp"),
        buttonText: "アップデート",
      ),
    );
  }
}
