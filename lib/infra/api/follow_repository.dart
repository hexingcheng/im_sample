import 'package:onlylive/domain/repository/follow_repository.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/services/shared_prefrences_service.dart';

class APIFollowRepository extends Repository implements FollowRepository {
  APIFollowRepository(this._client);
  final FollowServiceApi _client;

  @override
  Future<void> create(String talentID) async {
    try {
      final apiToken = await SharedPrefrencesService.getApiToken();
      final fanUUID = await SharedPrefrencesService.getUUID();

      _client.apiClient.addDefaultHeader(
        apiTokenHeader,
        apiToken,
      );
      await _client.followServiceCreateFollow(GrpcCreateFollowRequest(
        fanUuid: fanUUID,
        influencerUuid: talentID,
      ));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete({
    required String talentID,
  }) async {
    try {
      final apiToken = await SharedPrefrencesService.getApiToken();
      final fanUUID = await SharedPrefrencesService.getUUID();

      _client.apiClient.addDefaultHeader(
        apiTokenHeader,
        apiToken,
      );
      await _client.followServiceDeleteFollow(fanUUID, talentID);
    } catch (e) {
      rethrow;
    }
  }
}
