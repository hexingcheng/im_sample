import 'package:flutter/material.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {required this.onPressed,
      required this.text,
      this.textColor = Colors.black,
      required this.colors});
  final Function() onPressed;
  final String text;
  final Color textColor;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: RoundRectButton(
        text: text,
        textColor: textColor,
        onPressed: onPressed,
        overlayColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
