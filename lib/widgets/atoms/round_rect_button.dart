import 'package:flutter/material.dart';

class RoundRectButton extends StatelessWidget {
  const RoundRectButton({
    required this.onPressed,
    required this.text,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.overlayColor = Colors.white,
    this.isEnabled = true,
    this.disableBackgroundColor,
    this.disableTextColor,
    this.borderColor,
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    this.icon,
  });
  final Function() onPressed;
  final String text;
  final Color textColor;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color overlayColor;
  final bool isEnabled;
  final Color? disableBackgroundColor;
  final Color? disableTextColor;
  final Color? borderColor;
  final Widget? icon;

  Color? changeBackgroundColorByIsEnable(Set<MaterialState> _) {
    if (isEnabled) {
      return backgroundColor;
    } else {
      if (disableBackgroundColor == null) {
        return backgroundColor;
      }
      return disableBackgroundColor;
    }
  }

  Color? changeTextColorByIsEnable() {
    if (isEnabled) {
      return textColor;
    } else {
      if (disableTextColor == null) {
        return textColor;
      }
      return disableTextColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              changeBackgroundColorByIsEnable),
          side: borderColor != null
              ? MaterialStateProperty.all(
                  BorderSide(color: borderColor!),
                )
              : null,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith(
              changeBackgroundColorByIsEnable),
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
      child: icon == null
          ? Text(text,
              style: textStyle.copyWith(color: changeTextColorByIsEnable()))
          : Row(
              children: [
                icon!,
                const SizedBox(width: 16),
                Text(text,
                    style:
                        textStyle.copyWith(color: changeTextColorByIsEnable())),
              ],
            ),
    );
  }
}
