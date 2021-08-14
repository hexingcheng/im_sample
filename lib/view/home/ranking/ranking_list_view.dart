import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/view/home/ranking/premium_rank_view.dart';
import 'package:onlylive/view/home/ranking/ranking_cell_view.dart';

class RankingList extends StatelessWidget {
  const RankingList({required this.items, Key? key}) : super(key: key);

  final List<RankingItem> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();
    return Column(
      children: <Widget>[
        SizedBox(
          height: 222,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.25],
                    colors: [
                      Color(0xffB7FFFF),
                      Colors.white,
                    ],
                  ),
                ),
              ),
              Container(color: Colors.white.withOpacity(0.7)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 64),
                        PremiumRankView(
                          type: PremiumRankType.silver,
                          item: items[1],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        PremiumRankView(
                          type: PremiumRankType.gold,
                          item: items[0],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 64),
                        PremiumRankView(
                          type: PremiumRankType.blonze,
                          item: items[2],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 0),
        Wrap(
          children: List.generate(
            items.length,
            (index) {
              if (index < 3) {
                return const SizedBox.shrink();
              }
              return RankingCell(rank: index + 1, item: items[index]);
            },
          ).toList(),
        )
      ],
    );
  }
}
