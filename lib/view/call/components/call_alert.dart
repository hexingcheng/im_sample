import 'package:flutter/material.dart';

class CallAlert extends StatelessWidget {
  const CallAlert(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.3),
      ),
      child: Text(text),
    );
  }
}
