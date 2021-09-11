import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Toast extends StatefulWidget {
  const Toast({required this.show, required this.child, Key? key})
      : super(key: key);
  final bool show;
  final Widget child;

  @override
  _ToastState createState() => _ToastState();
}

class _ToastState extends State<Toast> {
  double opacity = 0;

  void showToast(bool show) {
    if (!show) return;
    setState(() {
      opacity = 1;
    });
    Timer(
      const Duration(seconds: 3),
      () => setState(
        () {
          opacity = 0;
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    showToast(widget.show);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: opacity,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10)),
        child: widget.child,
      ),
    );
  }
}
