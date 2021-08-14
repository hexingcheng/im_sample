import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/widgets/atoms/schedule_label.dart';
import 'package:onlylive/widgets/molecules/category.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';
import 'package:onlylive/extension/date_time_extension.dart';

class FutureFanMeetingListView extends StatelessWidget {
  const FutureFanMeetingListView(this.fanMeetigns);
  final List<FanMeeting> fanMeetigns;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Category(text: "今度お話する", onPressedArrow: () {}),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 204,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                fanMeetigns.length,
                (index) => GestureDetector(
                  onTap: () => {},
                  child: Container(
                    height: 204,
                    width: 120,
                    margin: const EdgeInsets.only(right: 12),
                    child: TalentCard(
                      imgHeight: 150,
                      imgWidth: 120,
                      imageUrl: fanMeetigns[index].talent.mainSquareImageUrl,
                      name: fanMeetigns[index].talent.displayName,
                      genre: fanMeetigns[index].talent.genre[0],
                      filterColor: const Color.fromRGBO(196, 196, 196, 0.4),
                      label: !fanMeetigns[index].startTime.isZero
                          ? Positioned(
                              bottom: 0,
                              child: SizedBox(
                                width: 120,
                                child:
                                    ScheduleLabel(fanMeetigns[index].startTime),
                              ),
                            )
                          : SizedBox.shrink(),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
