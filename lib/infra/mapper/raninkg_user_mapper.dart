import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';

class RankingItemMapper {
  static RankingItem fromJSON(Map<String, dynamic> json) {
    return RankingItem(
      talent: TalentMapper.fromJSON(json["influencer"] as Map<String, dynamic>),
      points: json["points"] as int,
    );
  }
}
