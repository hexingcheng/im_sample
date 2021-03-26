import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class CallIcon extends StatelessWidget {
  const CallIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          gradient: OnlyliveColor.gradient,
          borderRadius: BorderRadius.circular(100)),
      child: Icon(Icons.phone_rounded, color: Colors.white, size: 8),
    );
  }
}
