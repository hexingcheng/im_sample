import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class Divider extends StatelessWidget {
  const Divider();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: OnlyliveColor.paleGrey),
      ),
    );
  }
}
