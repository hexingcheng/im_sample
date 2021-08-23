import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class NextSchedule extends StatelessWidget {
  const NextSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: OnlyliveColor.lightPurple),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            color: OnlyliveColor.lightPurple,
            child: const Text("12/18(月)"),
          ),
        ),
      ],
    );
  }
}
