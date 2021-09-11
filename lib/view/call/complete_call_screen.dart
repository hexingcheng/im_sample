import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/splash_screen.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';

class CompleteCallView extends StatelessWidget {
  const CompleteCallView(this.talentImage, {Key? key}) : super(key: key);
  final String talentImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "通話が終了しました",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: OnlyliveColor.shadowColor,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            RoundedIconWithGradientBorder(
              imageUrl: talentImage,
              width: 140,
              borderWidth: 6,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 215,
              height: 52,
              child: RoundRectButton(
                text: "ホームへ",
                textColor: OnlyliveColor.purple,
                backgroundColor: Colors.white,
                onPressed: () => Navigator.push(
                  context,
                  SplashScreen.route(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
