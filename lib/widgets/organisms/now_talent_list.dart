import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/widgets/atoms/now_label.dart';
import 'package:onlylive/widgets/molecules/category.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';

class NowFanmmetingListView extends StatelessWidget {
  const NowFanmmetingListView(this.fanmeetings, {Key? key}) : super(key: key);
  final List<FanMeeting> fanmeetings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Category(text: "今すぐお話する", onPressedArrow: () {}),
          fanmeetings.isEmpty
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
                      fanmeetings.length,
                      (index) => Container(
                        height: 254,
                        width: 150,
                        margin: const EdgeInsets.only(right: 12),
                        child: TalentCard(
                          imgHeight: 200,
                          imgWidth: 150,
                          imageUrl:
                              fanmeetings[index].talent.mainSquareImageUrl,
                          name: fanmeetings[index].talent.displayName,
                          genre: fanmeetings[index].talent.genre[0],
                          label: NowLabel(),
                        ),
                      ),
                    ).toList(),
                  ),
                ),
        ],
      ),
    );
  }
}
