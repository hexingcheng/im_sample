import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';

class RankingCell extends StatelessWidget {
  const RankingCell({required this.rank, required this.item, Key? key})
      : super(key: key);

  final RankingItem item;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            children: <Widget>[
              Text(rank.toString(),
                  style: const TextStyle(
                    color: OnlyliveColor.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(width: 16),
              Imgix(
                context: context,
                imageUrl: item.talent.mainSquareImageUrl,
                width: 50,
                height: 50,
                borderRadius: BorderRadius.circular(50),
              ),
              const SizedBox(width: 20),
              Text(
                item.talent.displayName,
                style: const TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(child: SizedBox()),
              RichText(
                text: TextSpan(
                  text: item.points.toString(),
                  style: const TextStyle(
                      color: OnlyliveColor.darkPurple,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  children: const <InlineSpan>[
                    TextSpan(
                      text: " score",
                      style: TextStyle(
                        color: OnlyliveColor.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
