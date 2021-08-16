import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class SoldOutLabel extends StatelessWidget {
  const SoldOutLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 28,
      color: OnlyliveColor.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "SOLD OUT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
