import 'package:flutter/material.dart';

class HyperLinkText extends StatefulWidget {
  const HyperLinkText(this.text, {this.color: Colors.blue, this.pressedColor = Colors.blue});
  final String text;
  final Color color;
  final Color pressedColor;

  @override
  _HyperLinkTextState createState() => _HyperLinkTextState();
}

class _HyperLinkTextState extends State<HyperLinkText> {
  bool isTapped = false;
  void onTapDown() {
    super.setState(() {
      isTapped = true;
    });
  }

  void onTapCancel() {
    super.setState(() {
      isTapped = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => onTapDown(),
      onTapCancel: onTapCancel,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: isTapped ? widget.pressedColor : widget.color,
        ),
      ),
    );
  }
}
