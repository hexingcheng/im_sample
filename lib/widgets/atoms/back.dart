import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class Back extends StatelessWidget {
  const Back(this.context);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        size: 24,
      ),
      color: OnlyliveColor.white,
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
