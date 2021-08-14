import 'package:onlylive/domain/entities/talent.dart';

class RankingItem {
  RankingItem({
    required this.talent,
    required this.points,
  });

  Talent talent;
  int points;
}
