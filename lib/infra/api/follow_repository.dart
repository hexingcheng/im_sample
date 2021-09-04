import 'package:onlylive/domain/repository/follow_repository.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:openapi/api.dart';

class APIFollowRepository extends Repository implements FollowRepository {
  APIFollowRepository(this._basePath);
  final String _basePath;

  @override
  Future<void> create(
      {required String apiToken,
      required String fanUUID,
      required String talentID}) {
    return FollowServiceApi(
            ApiClient(basePath: _basePath)..addApiToken(apiToken))
        .followServiceCreateFollow(GrpcCreateFollowRequest(
          fanUuid: fanUUID,
          influencerUuid: talentID,
        ))
        .onError<ApiException>(
            (e, stackTrace) => throw Repository.apiException(e));
  }

  @override
  Future<void> delete(
      {required String apiToken,
      required String fanUUID,
      required String talentID}) async {
    try {
      await FollowServiceApi(
              ApiClient(basePath: _basePath)..addApiToken(apiToken))
          .followServiceDeleteFollow(
        fanUUID,
        talentID,
      );
    } on ApiException catch (e) {
      print(e);
      throw Repository.apiException(e);
    }
  }
}
