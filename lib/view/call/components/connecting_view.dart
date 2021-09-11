import 'package:flutter/material.dart';

class ConnectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Color(0xffDDE3E7).withOpacity(0.8),
        child: Center(child: Text("接続中")));
  }
}
