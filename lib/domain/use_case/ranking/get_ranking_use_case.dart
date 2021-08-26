import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/repository/ranking_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetRankingUseCase extends UseCase {
  GetRankingUseCase(this._rankingRepository);
  final RankingRepository _rankingRepository;

  Future<Ranking> execute() async {
    return _rankingRepository.getRanking();
  }
}
