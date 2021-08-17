import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';

enum PremiumRankType {
  gold,
  silver,
  blonze,
}

class PremiumRankView extends StatelessWidget {
  const PremiumRankView({required this.item, required this.type, Key? key})
      : super(key: key);

  final RankingItem item;
  final PremiumRankType type;

  static late double iconHeight;
  static late double iconWidth;
  static late double imageSize;
  static late String iconUrl;
  static late double positionBottom;
  static late double positionLeft;

  void _setConfig(PremiumRankType type) {
    switch (type) {
      case PremiumRankType.gold:
        iconWidth = 91;
        iconHeight = 100;
        iconUrl = "assets/icons/gold.png";
        imageSize = 72;
        positionBottom = 3;
        positionLeft = 9;
        break;
      case PremiumRankType.silver:
        iconWidth = 80;
        iconHeight = 80;
        imageSize = 60;
        iconUrl = "assets/icons/silver.png";
        positionBottom = 2.5;
        positionLeft = 14;
        break;
      case PremiumRankType.blonze:
        iconWidth = 80;
        iconHeight = 80;
        imageSize = 60;
        iconUrl = "assets/icons/blonze.png";
        positionBottom = 2.5;
        positionLeft = 6;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _setConfig(type);
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Image.asset(
              iconUrl,
              width: iconWidth,
              height: iconHeight,
            ),
            Positioned(
              bottom: positionBottom,
              left: positionLeft,
              child: Imgix(
                context: context,
                imageUrl: item.talent.mainSquareImageUrl,
                width: imageSize,
                height: imageSize,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          item.talent.displayName,
          style: const TextStyle(
            color: OnlyliveColor.darkPurple,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
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
    );
  }
}
