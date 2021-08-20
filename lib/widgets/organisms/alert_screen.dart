import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen(
      {required this.title,
      this.subTitle,
      required this.onPressed,
      required this.buttonText,
      Key? key})
      : super(key: key);
  final String title;
  final String? subTitle;
  final dynamic Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: OnlyliveColor.paleGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 295,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: OnlyliveColor.darkPurple,
              ),
              softWrap: true,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 295,
            child: Text(
              subTitle ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: OnlyliveColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 295,
            height: 52,
            child: RoundRectButton(
              backgroundColor: OnlyliveColor.purple,
              onPressed: onPressed,
              text: buttonText,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
