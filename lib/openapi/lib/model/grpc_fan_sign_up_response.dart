//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanSignUpResponse {
  /// Returns a new [GrpcFanSignUpResponse] instance.
  GrpcFanSignUpResponse({
    this.apiToken,
    this.uuid,
  });

  String apiToken;

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanSignUpResponse &&
     other.apiToken == apiToken &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (apiToken == null ? 0 : apiToken.hashCode) +
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcFanSignUpResponse[apiToken=$apiToken, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (apiToken != null) {
      json[r'api_token'] = apiToken;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcFanSignUpResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanSignUpResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanSignUpResponse(
        apiToken: json[r'api_token'],
        uuid: json[r'uuid'],
    );

  static List<GrpcFanSignUpResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanSignUpResponse>[]
      : json.map((dynamic value) => GrpcFanSignUpResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanSignUpResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanSignUpResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanSignUpResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanSignUpResponse-objects as value to a dart map
  static Map<String, List<GrpcFanSignUpResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanSignUpResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanSignUpResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

