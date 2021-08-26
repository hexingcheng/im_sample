import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/repository/feature_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class ListFeatureUseCase extends UseCase {
  ListFeatureUseCase(this._featureRepository);
  final FeatureRepository _featureRepository;

  Future<List<Feature>> execute() async {
    return _featureRepository.listFeature(10);
  }
}
