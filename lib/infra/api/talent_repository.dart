import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/services/shared_prefrences_service.dart';

class APITalentRepository implements TalentRepository {
  APITalentRepository(this._client);
  final InfluencerServiceApi _client;

  @override
  Future<Map<Talent, bool?>> getTalent(String talentID) async {
    final apiToken = await SharedPrefrencesService.getApiToken();
    print(apiToken);
    final fanUUID = await SharedPrefrencesService.getUUID();
    final res = await _client.influencerServiceGetInfluencer(talentID,
        fanUuid: fanUUID);
    return {TalentMapper.decode(res.influencer): res.isFollow};
  }
}
