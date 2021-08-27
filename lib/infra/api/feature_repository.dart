import 'package:onlylive/infra/mapper/feature_mapper.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/repository/feature_repository.dart';

class APIFeatureRepository implements FeatureRepository {
  APIFeatureRepository(this._client);
  final FeatureServiceApi _client;

  @override
  Future<List<Feature>> listFeature(int pageSize) async {
    final response =
        await _client.featureServiceListFeatures(pageSize: pageSize);
    return response.feature.map(FeatureMapper.decode).toList();
    ;
  }
}
