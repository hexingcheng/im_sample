import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/follow_status.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:openapi/api.dart';

class APITalentRepository implements TalentRepository {
  APITalentRepository(this._basePath);
  final String _basePath;

  @override
  Future<FollowStatus> getTalent(
      {String? fanUUID, required String talentID}) async {
    final service = InfluencerServiceApi(ApiClient(basePath: _basePath));
    final res = await service.influencerServiceGetInfluencer(talentID,
        fanUuid: fanUUID);

    return FollowStatus(
        talent: TalentMapper.decode(res.influencer),
        isFollow: res.isFollow ?? false,
        followerNum: res.followerNum);
  }
}
