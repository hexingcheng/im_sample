import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/splash_screen.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';
import 'package:onlylive/widgets/templates/blur_transition.dart';

class FinishCallScreen extends StatefulWidget {
  const FinishCallScreen(
      {required this.showMe, required this.talentImage, Key? key})
      : super(key: key);
  final bool showMe;
  final String talentImage;

  @override
  State<FinishCallScreen> createState() => FinishCallScreenState();
}

class FinishCallScreenState extends State<FinishCallScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double opacity = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0,
      duration: const Duration(milliseconds: 500),
      vsync: this,
      upperBound: 20,
    );
  }

  void setAnimation() {
    if (widget.showMe) {
      _controller.forward();
      opacity = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    setAnimation();
    return BlurTransition(
      animation: _controller,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 500),
        child: ColoredBox(
          color: Colors.transparent,
          child: Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
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
                      imageUrl: widget.talentImage,
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
            ),
          ),
        ),
      ),
    );
  }
}
