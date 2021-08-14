import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlylive/extension/date_time_extension.dart';

class ScheduleLabel extends StatelessWidget {
  const ScheduleLabel(this.schedule, {Key? key}) : super(key: key);

  final DateTime schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 28,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        color: Color(0xff5C7498),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/schedule.svg",
          ),
          const SizedBox(width: 6),
          Text(
            schedule.full,
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
