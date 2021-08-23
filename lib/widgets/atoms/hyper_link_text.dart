import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class HyperLinkText extends StatefulWidget {
  const HyperLinkText(
    this.text, {
    required this.onTap,
  });
  final String text;
  final void Function() onTap;

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
      onTap: widget.onTap,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: isTapped
              ? OnlyliveColor.purple.withOpacity(0.6)
              : OnlyliveColor.purple,
        ),
      ),
    );
  }
}
