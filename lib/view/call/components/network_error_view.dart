import 'package:flutter/material.dart';
import 'package:onlylive/snippets/mail.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/main_screen.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView(
      {required this.annotationID, required this.fanUUID, Key? key})
      : super(key: key);
  final String annotationID;
  final String fanUUID;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 264,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "通信エラー",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                shadows: <Shadow>[
                  Shadow(blurRadius: 20, color: Colors.black.withOpacity(0.2))
                ],
              ),
            ),
            Text(
              "予期しない理由で通話が中断しました。\n通信環境が良くない、または機内モードに\nなっていた可能性があります",
              style: TextStyle(
                height: 1.4,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
                shadows: <Shadow>[
                  Shadow(blurRadius: 20, color: Colors.black.withOpacity(0.2))
                ],
              ),
            ),
            SizedBox(
              width: 215,
              height: 52,
              child: RoundRectButton(
                onPressed: () =>
                    openMailApp(annotationId: annotationID, fanUUID: fanUUID),
                text: "運営へお問い合わせ",
                textColor: OnlyliveColor.purple,
              ),
            ),
            SizedBox(
              width: 215,
              height: 52,
              child: RoundRectButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MainScreen.route());
                },
                text: "ホームへ",
                textColor: OnlyliveColor.white,
                backgroundColor: Colors.transparent,
                borderColor: Colors.white,
              ),
            ),
          ]),
    );
  }
}
