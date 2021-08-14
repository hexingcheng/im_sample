import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/infra/mapper/raninkg_user_mapper.dart';

class RankingMapper {
  static Ranking fromJSON(Map<String, dynamic> json) {
    List<RankingItem> listRankingItemMapping(List<dynamic> jsonList) {
      final ranking = <RankingItem>[];
      for (final json in jsonList) {
        ranking.add(RankingItemMapper.fromJSON(json as Map<String, dynamic>));
      }
      return ranking;
    }

    return Ranking(
      weekly: listRankingItemMapping(json["weekly_ranking"] as List<dynamic>),
      monthly: listRankingItemMapping(json["monthly_ranking"] as List<dynamic>),
    );
  }
}
