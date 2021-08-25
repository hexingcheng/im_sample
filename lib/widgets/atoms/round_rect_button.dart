import 'package:flutter/material.dart';

class RoundRectButton extends StatelessWidget {
  const RoundRectButton({
    required this.onPressed,
    required this.text,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.overlayColor = Colors.white,
    this.isEnabled = true,
    this.disableColor,
  });
  final Function() onPressed;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color overlayColor;
  final bool isEnabled;
  final Color? disableColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (isEnabled) {
                return backgroundColor;
              } else {
                if (disableColor == null) {
                  return backgroundColor;
                }
                return disableColor;
              }
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          overlayColor: MaterialStateProperty.all(overlayColor),
          shadowColor: MaterialStateProperty.all(
              const Color(0xffA3B7FF).withOpacity(0.3)),
          elevation: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.pressed) && isEnabled) {
                return 1;
              } else {
                return 4;
              }
            },
          )),
      onPressed: () {
        if (isEnabled) {
          onPressed();
        }
      },
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
