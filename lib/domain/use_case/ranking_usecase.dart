import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/repository/ranking_repository.dart';

class RankingUseCase {
  RankingUseCase(this._rankingRepository);
  final RankingRepository _rankingRepository;

  Future<Ranking> get() async {
    return _rankingRepository.getRanking();
  }
}
