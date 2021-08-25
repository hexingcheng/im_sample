import 'package:flutter/material.dart';

class CallActionIcon extends StatelessWidget {
  const CallActionIcon(
      {required this.icon,
      required this.text,
      required this.onPressed,
      Key? key})
      : super(key: key);

  final Widget icon;
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: <Widget>[
          icon,
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
