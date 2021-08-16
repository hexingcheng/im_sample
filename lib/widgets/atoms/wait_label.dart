import 'package:flutter/material.dart';

class WaitLabel extends StatelessWidget {
  const WaitLabel(this.waitingMinutes, {Key? key}) : super(key: key);
  final int waitingMinutes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
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
        children: <Widget>[
          const Icon(
            Icons.phone_rounded,
            color: Colors.white,
            size: 17,
          ),
          const SizedBox(width: 8),
          Text(
            waitingMinutes.toString(),
            style: const TextStyle(
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
