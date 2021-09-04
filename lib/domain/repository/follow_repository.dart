abstract class FollowRepository {
  // getFan is fan getter
  // Future<Fan> getFan(String fanUUID);

  Future<void> create(
      {required String apiToken,
      required String fanUUID,
      required String talentID});
  Future<void> delete(
      {required String apiToken,
      required String fanUUID,
      required String talentID});
}
