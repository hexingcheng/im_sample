abstract class FollowRepository {
  // getFan is fan getter
  // Future<Fan> getFan(String fanUUID);

  Future<void> create(String talentID);
  Future<void> delete({required String talentID});
}
