import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';

class APITalentRepository implements TalentRepository {
  APITalentRepository(this._client);
  final APIClient _client;

  @override
  Future<Talent> getTalent(String talentID) async {
    debugPrint("いいい");
    final res = await _client.get("v1/influencer/uuid/$talentID",
        fromJson: TalentMapper.fromJSON);
    print(res);
    return res;
  }
}
