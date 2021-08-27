//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateVoipTokenFanResponse {
  /// Returns a new [GrpcUpdateVoipTokenFanResponse] instance.
  GrpcUpdateVoipTokenFanResponse({
    this.voipToken,
  });

  String voipToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateVoipTokenFanResponse &&
     other.voipToken == voipToken;

  @override
  int get hashCode =>
    (voipToken == null ? 0 : voipToken.hashCode);

  @override
  String toString() => 'GrpcUpdateVoipTokenFanResponse[voipToken=$voipToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (voipToken != null) {
      json[r'voip_token'] = voipToken;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateVoipTokenFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateVoipTokenFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateVoipTokenFanResponse(
        voipToken: json[r'voip_token'],
    );

  static List<GrpcUpdateVoipTokenFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateVoipTokenFanResponse>[]
      : json.map((dynamic value) => GrpcUpdateVoipTokenFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateVoipTokenFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateVoipTokenFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateVoipTokenFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateVoipTokenFanResponse-objects as value to a dart map
  static Map<String, List<GrpcUpdateVoipTokenFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateVoipTokenFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateVoipTokenFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

