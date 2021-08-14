import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/repository/ranking_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/mapper/ranking_mapper.dart';

class APIRankingRepository implements RankingRepository {
  APIRankingRepository(this._client);
  final APIClient _client;

  @override
  Future<Ranking> getRanking() async {
    return _client.get("v1/ranking", fromJson: RankingMapper.fromJSON);
  }
}
