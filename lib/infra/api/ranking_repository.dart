import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/repository/ranking_repository.dart';
import 'package:onlylive/infra/mapper/ranking_item_mapper.dart';
import 'package:openapi/api.dart';

class APIRankingRepository implements RankingRepository {
  APIRankingRepository(this._client);
  final PointServiceApi _client;

  @override
  Future<Ranking> getRanking() async {
    final response = await _client.pointServiceGetRanking();
    return Ranking(
      monthly: response.monthlyRanking.map(RankingItemMapper.decode).toList(),
      weekly: response.weeklyRanking.map(RankingItemMapper.decode).toList(),
    );
  }
}
