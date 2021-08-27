import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/view/home/components/talent_list/talent_list_header_view.dart';
import 'package:onlylive/view/home/screens/now_talent_list/now_talent_list_screen.dart';
import 'package:onlylive/widgets/atoms/now_label.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';

class NowTalentListView extends StatelessWidget {
  const NowTalentListView(this.fanMeetings, {Key? key}) : super(key: key);
  final List<FanMeeting> fanMeetings;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TalentListHeaderView(
          text: "今すぐお話する",
          onPressedArrow: () =>
              Navigator.push(context, NowTalentListScreen.route()),
          hiddenArrow: fanMeetings.isEmpty ? true : false,
        ),
        fanMeetings.isEmpty
            ? Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: const Alignment(0, 0.5),
                    end: Alignment.topCenter,
                    colors: [
                      const Color(0xffECF3FC),
                      const Color(0xffECF3FC).withOpacity(0),
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "話せる人がここに表示される",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffA2ACBB),
                    ),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.only(top: 5),
                height: 254,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    fanMeetings.length,
                    (index) => Container(
                      height: 254,
                      width: 150,
                      margin: const EdgeInsets.only(right: 12),
                      child: TalentCard(
                        imgHeight: 200,
                        imgWidth: 150,
                        imageUrl: fanMeetings[index].talent.mainSquareImageUrl,
                        name: fanMeetings[index].talent.displayName,
                        genre: fanMeetings[index].talent.genre[0],
                        label: NowLabel(),
                      ),
                    ),
                  ).toList(),
                ),
              ),
      ],
    );
  }
}
