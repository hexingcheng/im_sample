import 'dart:ui';

import 'package:flutter/material.dart';

class BlurTransition extends AnimatedWidget {
  const BlurTransition({required this.animation, required this.child, Key? key})
      : super(key: key, listenable: animation);
  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: animation.value, sigmaY: animation.value),
      child: Container(
        child: child,
      ),
    );
  }
}
