import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallActionIcon extends StatelessWidget {
  const CallActionIcon(
      {required this.text,
      required this.onPressed,
      required this.isEnabled,
      required this.assetName,
      Key? key})
      : super(key: key);

  final String text;
  final void Function() onPressed;
  final bool isEnabled;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (isEnabled) {onPressed()}
      },
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/$assetName.svg",
            width: 40,
            height: 40,
            color: isEnabled ? Colors.white : Colors.white.withOpacity(0.3),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: isEnabled ? Colors.white : Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
