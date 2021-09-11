import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/main_screen.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/toast.dart';

class SaveChekiView extends StatelessWidget {
  const SaveChekiView(this.imageUrl, {Key? key}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          height: 437,
          child: Stack(
            children: [
              Imgix(
                context: context,
                imageUrl: imageUrl,
                width: 300,
                height: 437,
              ),
              Center(
                child: SizedBox(
                    width: 136,
                    height: 126,
                    child: Toast(
                      show: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/save_folder.svg"),
                          const Text(
                            "カメラロールに保存しました",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 1.6,
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(height: 33),
        SizedBox(
          width: 335,
          height: 52,
          child: RoundRectButton(
            onPressed: () => {},
            text: "写真をSNSにシェアする",
            textColor: OnlyliveColor.purple,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 335,
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
      ],
    );
  }
}
