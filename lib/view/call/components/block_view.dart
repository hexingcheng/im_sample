import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/home/home_screen.dart';
import 'package:onlylive/view/main_screen.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';

class BlockView extends StatelessWidget {
  const BlockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "通話が終了しました",
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
            "不適切な通話を検出したため、\nシステムが通話をブロックしました",
            textAlign: TextAlign.center,
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
                  Navigator.pushReplacement(context, MainScreen.route()),
              text: "ホームへ",
              textColor: OnlyliveColor.purple,
            ),
          ),
        ],
      ),
    );
  }
}
