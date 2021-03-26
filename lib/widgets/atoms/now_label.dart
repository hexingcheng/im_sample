import 'package:flutter/material.dart';

class NowLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 77,
        height: 28,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff8EC5FC),
              Color(0xffE0C3FC),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_rounded, color: Colors.white, size: 17),
            SizedBox(width: 8),
            Text(
              "開催中",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ));
  }
}
