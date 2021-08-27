//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencerRefreshTokenRequest {
  /// Returns a new [GrpcInfluencerRefreshTokenRequest] instance.
  GrpcInfluencerRefreshTokenRequest({
    this.oldToken,
  });

  String oldToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencerRefreshTokenRequest &&
     other.oldToken == oldToken;

  @override
  int get hashCode =>
    (oldToken == null ? 0 : oldToken.hashCode);

  @override
  String toString() => 'GrpcInfluencerRefreshTokenRequest[oldToken=$oldToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (oldToken != null) {
      json[r'old_token'] = oldToken;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencerRefreshTokenRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencerRefreshTokenRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencerRefreshTokenRequest(
        oldToken: json[r'old_token'],
    );

  static List<GrpcInfluencerRefreshTokenRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerRefreshTokenRequest>[]
      : json.map((dynamic value) => GrpcInfluencerRefreshTokenRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencerRefreshTokenRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencerRefreshTokenRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencerRefreshTokenRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencerRefreshTokenRequest-objects as value to a dart map
  static Map<String, List<GrpcInfluencerRefreshTokenRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencerRefreshTokenRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencerRefreshTokenRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

