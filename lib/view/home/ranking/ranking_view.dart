import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/home/ranking/ranking_list_view.dart';
import 'package:onlylive/view/home/ranking/ranking_select_button.dart';
import 'package:onlylive/view/home/vm/home_vm.dart';
import 'package:onlylive/extension/date_time_extension.dart';

class RankingView extends StatefulWidget {
  const RankingView({required this.ranking, required this.loading, Key? key})
      : super(key: key);

  final Ranking ranking;
  final bool loading;

  @override
  State<RankingView> createState() => RankingViewState();
}

class RankingViewState extends State<RankingView> {
  void chageRankingType(RankingType type) {
    super.setState(() {
      selected = type;
    });
  }

  @override
  void initState() {
    super.initState();
    setRankingDuration();
  }

  RankingType selected = RankingType.weekly;
  Map<RankingType, String> rankingDuration = {};

  List<RankingItem> getRankingItem() {
    switch (selected) {
      case RankingType.weekly:
        return widget.ranking.weekly;
      case RankingType.monthly:
        return widget.ranking.monthly;
    }
  }

  void setRankingDuration() {
    final now = DateTime.now();
    rankingDuration[RankingType.monthly] =
        "${now.add(const Duration(days: -30)).date} ~ ${now.date}";
    rankingDuration[RankingType.weekly] =
        "${now.add(const Duration(days: -7)).date} ~ ${now.date}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectButton(
              onPressed: () => chageRankingType(RankingType.monthly),
              selected: selected == RankingType.monthly,
              buttonRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomLeft: Radius.circular(60),
              ),
              text: "monthly",
            ),
            SelectButton(
              onPressed: () => chageRankingType(RankingType.weekly),
              selected: selected == RankingType.weekly,
              buttonRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              text: "weekly",
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          rankingDuration[selected]!,
          style: const TextStyle(
            color: OnlyliveColor.grey,
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 16),
        RankingList(items: getRankingItem())
      ],
    );
  }
}
