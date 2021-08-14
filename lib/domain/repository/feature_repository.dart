import 'package:onlylive/domain/entities/feature.dart';

abstract class FeatureRepository {
  // getFeatures is feature lsit gettter
  Future<List<Feature>> listFeature(int pageSize);
}
