import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class SelectButton extends StatelessWidget {
  const SelectButton(
      {required this.text,
      required this.selected,
      required this.onPressed,
      required this.buttonRadius,
      Key? key})
      : super(key: key);

  final bool selected;
  final void Function() onPressed;
  final String text;
  final BorderRadius buttonRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
            selected ? OnlyliveColor.purple : Colors.white,
          ),
          side: MaterialStateProperty.all(
              const BorderSide(color: OnlyliveColor.purple)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: buttonRadius,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : OnlyliveColor.purple,
          ),
        ),
      ),
    );
  }
}
