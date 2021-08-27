//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateVoipTokenFanRequest {
  /// Returns a new [GrpcUpdateVoipTokenFanRequest] instance.
  GrpcUpdateVoipTokenFanRequest({
    this.voipToken,
    this.uuid,
  });

  String voipToken;

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateVoipTokenFanRequest &&
     other.voipToken == voipToken &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (voipToken == null ? 0 : voipToken.hashCode) +
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcUpdateVoipTokenFanRequest[voipToken=$voipToken, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (voipToken != null) {
      json[r'voip_token'] = voipToken;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateVoipTokenFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateVoipTokenFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateVoipTokenFanRequest(
        voipToken: json[r'voip_token'],
        uuid: json[r'uuid'],
    );

  static List<GrpcUpdateVoipTokenFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateVoipTokenFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateVoipTokenFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateVoipTokenFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateVoipTokenFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateVoipTokenFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateVoipTokenFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateVoipTokenFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateVoipTokenFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateVoipTokenFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

