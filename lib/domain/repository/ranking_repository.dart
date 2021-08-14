import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/entities/ranking.dart';

abstract class RankingRepository {
  // getRanking is ranking gettter
  Future<Ranking> getRanking();
}
