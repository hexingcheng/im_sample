import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:provider/provider.dart';
import 'package:onlylive/extension/date_time_extension.dart';

class NextSchedule extends StatelessWidget {
  const NextSchedule(

      // required this.talentID,
      // required this.length,
      // required this.eventDate,
      // required this.limitedPeople,
      this.fanMeetings,
      {Key? key})
      : super(key: key);
  // final String talentID;
  // final int length;
  // final DateTime eventDate;
  // final int limitedPeople;
  final List<FanMeetingOfInfluencer> fanMeetings;

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider<TalentDetailVM>(
    //     create: (context) => TalentDetailVM(talentID: talentID),
    //     builder: (context, child) {
    //       final vm = context.watch<TalentDetailVM>();
    //       final fanMeetings = vm.fanMeetings[MeetingType.future] ?? [];
    return Container(
        height: 300,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            fanMeetings.length,
            (index) => Column(
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
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                  ),
                  child: Text(
                    fanMeetings[index].eventDate.date,
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
                        fanMeetings[index].eventDate.hm,
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
                        "${fanMeetings[index].limitedPeople}人限定",
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
            ),
          ),
        ));
  }
  // );
  // }
}
