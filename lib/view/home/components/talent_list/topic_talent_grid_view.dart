import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/view/home/screens/topic_talent_list/topic_talent_list_screen.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';

class TopicTalentGridView extends StatelessWidget {
  const TopicTalentGridView(this.fanMeetings, {Key? key}) : super(key: key);
  final List<FanMeeting> fanMeetings;

  void calcPopularCardSize(BuildContext context) {
    // カードアス比 (縦 x 横) = 27 x 16
    // 画像アス比 (縦 x 横) = 4 x 3
    const sumMargin = 40 + 11;
    final contentsWidth = MediaQuery.of(context).size.width - sumMargin;
    _popularCardWidth = contentsWidth / 2;
    const itemHeight = 54; // 画像を除いたheight
    _popularCardImageHeight = _popularCardWidth + (_popularCardWidth / 3);
    _popularCardAspectRatio =
        _popularCardWidth / (_popularCardImageHeight + itemHeight);
  }

  static late double _popularCardAspectRatio;
  static late double _popularCardImageHeight;
  static late double _popularCardWidth;

  @override
  Widget build(BuildContext context) {
    calcPopularCardSize(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "おすすめタレント",
          style: TextStyle(
            color: Color(0xff5C7498),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 24,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: _popularCardAspectRatio,
          children: fanMeetings
              .map(
                (fanMeeting) => TalentCard(
                  imgHeight: _popularCardImageHeight,
                  imgWidth: _popularCardWidth,
                  imageUrl: fanMeeting.talent.mainSquareImageUrl,
                  name: fanMeeting.talent.displayName,
                  genre: fanMeeting.talent.genre[0],
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 24),
        Center(
          child: SizedBox(
            width: 200,
            height: 52,
            child: RoundRectButton(
              text: "もっとみる",
              backgroundColor: const Color(0xffA3B7FF),
              textColor: Colors.white,
              onPressed: () =>
                  Navigator.push(context, TopicTalentListScreen.route()),
            ),
          ),
        ),
      ],
    );
  }
}
