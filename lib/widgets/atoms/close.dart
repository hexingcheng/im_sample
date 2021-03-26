import 'package:flutter/material.dart';

class Close extends StatelessWidget {
  const Close(this.context);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close,
        size: 20,
      ),
      color: Color(0xffA2ACBB),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
