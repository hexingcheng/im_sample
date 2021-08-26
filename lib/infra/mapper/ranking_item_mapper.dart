import 'package:onlylive/domain/entities/ranking_user.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:openapi/api.dart';

class RankingItemMapper {
  static RankingItem decode(GrpcRankingInfluencer rankingItem) {
    return RankingItem(
      talent: TalentMapper.decode(rankingItem.influencer),
      points: rankingItem.points,
    );
  }
}
