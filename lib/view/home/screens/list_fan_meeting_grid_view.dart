import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';

class ListFanMeetingGridView extends StatefulWidget {
  const ListFanMeetingGridView(
      {required this.fanMeetings, this.layer, required this.update, Key? key})
      : super(key: key);
  final List<FanMeeting> fanMeetings;
  final Widget Function(FanMeeting fanMeeting)? layer;
  final Future<void> Function() update;

  @override
  State<ListFanMeetingGridView> createState() => ListFanMeetingGridViewState();
}

class ListFanMeetingGridViewState extends State<ListFanMeetingGridView> {
  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (!loading) {
        super.setState(() {
          loading = true;
        });
        Future(() async {
          await widget.update();
          super.setState(() {
            loading = false;
          });
        });
      }
    }
  }

  bool loading = false;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

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
    return Stack(
      children: [
        GridView.count(
          controller: _scrollController,
          padding: const EdgeInsets.only(top: 24),
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 24,
          childAspectRatio: _popularCardAspectRatio,
          children: widget.fanMeetings
              .map(
                (fanMeeting) => Stack(
                  children: <Widget>[
                    TalentCard(
                      imgHeight: _popularCardImageHeight,
                      imgWidth: _popularCardWidth,
                      imageUrl: fanMeeting.talent.mainSquareImageUrl,
                      name: fanMeeting.talent.displayName,
                      genre: fanMeeting.talent.genre[0],
                    ),
                    widget.layer != null
                        ? widget.layer!(fanMeeting)
                        : const SizedBox.shrink(),
                  ],
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: SizedBox(
            width: 40,
            height: 40,
            child: Loading(loading),
          ),
        ),
      ],
    );
  }
}
