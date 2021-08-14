import 'package:onlylive/domain/entities/ranking_user.dart';

class Ranking {
  Ranking({
    required this.weekly,
    required this.monthly,
  });
  List<RankingItem> weekly;
  List<RankingItem> monthly;
}
