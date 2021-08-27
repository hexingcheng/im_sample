//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListFollowsByFanUUIDResponse {
  /// Returns a new [GrpcListFollowsByFanUUIDResponse] instance.
  GrpcListFollowsByFanUUIDResponse({
    this.influencer = const [],
    this.nextPageToken,
  });

  List<GrpcInfluencer> influencer;

  String nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListFollowsByFanUUIDResponse &&
     other.influencer == influencer &&
     other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
    (influencer == null ? 0 : influencer.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken.hashCode);

  @override
  String toString() => 'GrpcListFollowsByFanUUIDResponse[influencer=$influencer, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencer != null) {
      json[r'influencer'] = influencer;
    }
    if (nextPageToken != null) {
      json[r'next_page_token'] = nextPageToken;
    }
    return json;
  }

  /// Returns a new [GrpcListFollowsByFanUUIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListFollowsByFanUUIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListFollowsByFanUUIDResponse(
        influencer: GrpcInfluencer.listFromJson(json[r'influencer']),
        nextPageToken: json[r'next_page_token'],
    );

  static List<GrpcListFollowsByFanUUIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListFollowsByFanUUIDResponse>[]
      : json.map((dynamic value) => GrpcListFollowsByFanUUIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListFollowsByFanUUIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListFollowsByFanUUIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListFollowsByFanUUIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListFollowsByFanUUIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListFollowsByFanUUIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListFollowsByFanUUIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListFollowsByFanUUIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

