//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanRefreshTokenResponse {
  /// Returns a new [GrpcFanRefreshTokenResponse] instance.
  GrpcFanRefreshTokenResponse({
    this.newToken,
  });

  String newToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanRefreshTokenResponse &&
     other.newToken == newToken;

  @override
  int get hashCode =>
    (newToken == null ? 0 : newToken.hashCode);

  @override
  String toString() => 'GrpcFanRefreshTokenResponse[newToken=$newToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (newToken != null) {
      json[r'new_token'] = newToken;
    }
    return json;
  }

  /// Returns a new [GrpcFanRefreshTokenResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanRefreshTokenResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanRefreshTokenResponse(
        newToken: json[r'new_token'],
    );

  static List<GrpcFanRefreshTokenResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanRefreshTokenResponse>[]
      : json.map((dynamic value) => GrpcFanRefreshTokenResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanRefreshTokenResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanRefreshTokenResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanRefreshTokenResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanRefreshTokenResponse-objects as value to a dart map
  static Map<String, List<GrpcFanRefreshTokenResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanRefreshTokenResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanRefreshTokenResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

