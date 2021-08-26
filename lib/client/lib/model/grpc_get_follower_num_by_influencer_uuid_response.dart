//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetFollowerNumByInfluencerUUIDResponse {
  /// Returns a new [GrpcGetFollowerNumByInfluencerUUIDResponse] instance.
  GrpcGetFollowerNumByInfluencerUUIDResponse({
    this.followerNum,
  });

  int followerNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetFollowerNumByInfluencerUUIDResponse &&
     other.followerNum == followerNum;

  @override
  int get hashCode =>
    (followerNum == null ? 0 : followerNum.hashCode);

  @override
  String toString() => 'GrpcGetFollowerNumByInfluencerUUIDResponse[followerNum=$followerNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (followerNum != null) {
      json[r'follower_num'] = followerNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetFollowerNumByInfluencerUUIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetFollowerNumByInfluencerUUIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetFollowerNumByInfluencerUUIDResponse(
        followerNum: json[r'follower_num'],
    );

  static List<GrpcGetFollowerNumByInfluencerUUIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetFollowerNumByInfluencerUUIDResponse>[]
      : json.map((dynamic value) => GrpcGetFollowerNumByInfluencerUUIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetFollowerNumByInfluencerUUIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetFollowerNumByInfluencerUUIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetFollowerNumByInfluencerUUIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetFollowerNumByInfluencerUUIDResponse-objects as value to a dart map
  static Map<String, List<GrpcGetFollowerNumByInfluencerUUIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetFollowerNumByInfluencerUUIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetFollowerNumByInfluencerUUIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

