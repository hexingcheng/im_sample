import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/view/home/components/talent_list/talent_list_header_view.dart';
import 'package:onlylive/view/home/screens/future_talent_list/futurre_talent_list_screen.dart';
import 'package:onlylive/widgets/atoms/schedule_label.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';
import 'package:onlylive/extension/date_time_extension.dart';
import 'package:onlylive/view/talent/talent_detail_screen.dart';

class FutureTalentListView extends StatelessWidget {
  const FutureTalentListView(this.fanMeetings, {Key? key}) : super(key: key);
  final List<FanMeeting> fanMeetings;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TalentListHeaderView(
          text: "今度お話する",
          onPressedArrow: () =>
              Navigator.push(context, FutureTalentListScreen.route()),
          hiddenArrow: fanMeetings.isEmpty ? true : false,
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 204,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              fanMeetings.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    // TalentDetailScreen.route()
                    MaterialPageRoute(
                        builder: (context) => TalentDetailScreen(
                              talentID: fanMeetings[index].talent.uuid,
                            ))),
                child: Container(
                  height: 204,
                  width: 120,
                  margin: const EdgeInsets.only(right: 12),
                  child: TalentCard(
                    imgHeight: 150,
                    imgWidth: 120,
                    imageUrl: fanMeetings[index].talent.mainSquareImageUrl,
                    name: fanMeetings[index].talent.displayName,
                    genre: fanMeetings[index].talent.genre[0],
                    filterColor: const Color.fromRGBO(196, 196, 196, 0.4),
                    label: !fanMeetings[index].eventDate.isZero
                        ? Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 120,
                              child:
                                  ScheduleLabel(fanMeetings[index].eventDate),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
