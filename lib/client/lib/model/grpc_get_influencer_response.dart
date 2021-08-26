//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetInfluencerResponse {
  /// Returns a new [GrpcGetInfluencerResponse] instance.
  GrpcGetInfluencerResponse({
    this.influencer,
    this.isFollow,
    this.followerNum,
  });

  GrpcInfluencer influencer;

  bool isFollow;

  int followerNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetInfluencerResponse &&
     other.influencer == influencer &&
     other.isFollow == isFollow &&
     other.followerNum == followerNum;

  @override
  int get hashCode =>
    (influencer == null ? 0 : influencer.hashCode) +
    (isFollow == null ? 0 : isFollow.hashCode) +
    (followerNum == null ? 0 : followerNum.hashCode);

  @override
  String toString() => 'GrpcGetInfluencerResponse[influencer=$influencer, isFollow=$isFollow, followerNum=$followerNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencer != null) {
      json[r'influencer'] = influencer;
    }
    if (isFollow != null) {
      json[r'is_follow'] = isFollow;
    }
    if (followerNum != null) {
      json[r'follower_num'] = followerNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetInfluencerResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetInfluencerResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetInfluencerResponse(
        influencer: GrpcInfluencer.fromJson(json[r'influencer']),
        isFollow: json[r'is_follow'],
        followerNum: json[r'follower_num'],
    );

  static List<GrpcGetInfluencerResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetInfluencerResponse>[]
      : json.map((dynamic value) => GrpcGetInfluencerResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetInfluencerResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetInfluencerResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetInfluencerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetInfluencerResponse-objects as value to a dart map
  static Map<String, List<GrpcGetInfluencerResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetInfluencerResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetInfluencerResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

