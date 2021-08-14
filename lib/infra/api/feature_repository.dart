import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/repository/feature_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/mapper/feature_mapper.dart';

class APIFeatureRepository implements FeatureRepository {
  APIFeatureRepository(this._client);
  final APIClient _client;

  @override
  Future<List<Feature>> listFeature(int pageSize) async {
    final res = await _client.get(
      "v1/features?page_size=$pageSize",
    ) as Map<String, dynamic>;

    final featuresJson = res["feature"] as List<dynamic>? ?? [];

    final features = <Feature>[];

    for (final feature in featuresJson) {
      features.add(FeatureMapper.fromJSON(feature as Map<String, dynamic>));
    }
    return features;
  }
}
