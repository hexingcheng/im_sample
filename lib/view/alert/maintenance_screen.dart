import 'package:flutter/material.dart';
import 'package:onlylive/snippets/url_launcher.dart';
import 'package:onlylive/widgets/organisms/alert_screen.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({Key? key}) : super(key: key);
  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (_) => const MaintenanceScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertScreen(
        title: "ただいまメンテナンス中です",
        subTitle:
            "現在システムメンテナンスを実施しております。大変ご迷惑をおかけして申し訳ありません。メンテナンス終了までしばらくお待ちください",
        onPressed: () => openUrl(url: "https://twitter.com/onlylive_jp"),
        buttonText: "公式Twitterを確認する",
      ),
    );
  }
}
