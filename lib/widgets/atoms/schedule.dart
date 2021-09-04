import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/extension/date_time_extension.dart';

class Schedule extends StatelessWidget {
  const Schedule(this.schedule, this.limitedPeople, {Key? key})
      : super(key: key);
  final DateTime schedule;
  final int limitedPeople;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          width: 89,
          height: 29,
          decoration: BoxDecoration(
            color: OnlyliveColor.purple,
            border: Border.all(color: OnlyliveColor.lightPurple),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(200),
                bottomRight: Radius.circular(200)),
          ),
          child: Text(
            schedule.date,
            style: const TextStyle(
              color: OnlyliveColor.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const SizedBox(width: 20),
            Container(
              child: Text(
                schedule.hm,
                style: const TextStyle(
                  color: OnlyliveColor.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(width: 23),
            Container(
              child: Text(
                "$limitedPeople人限定",
                style: const TextStyle(
                  color: OnlyliveColor.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
