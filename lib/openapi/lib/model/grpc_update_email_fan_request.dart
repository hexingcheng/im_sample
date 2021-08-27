//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateEmailFanRequest {
  /// Returns a new [GrpcUpdateEmailFanRequest] instance.
  GrpcUpdateEmailFanRequest({
    this.email,
    this.uuid,
  });

  String email;

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateEmailFanRequest &&
     other.email == email &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcUpdateEmailFanRequest[email=$email, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateEmailFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateEmailFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateEmailFanRequest(
        email: json[r'email'],
        uuid: json[r'uuid'],
    );

  static List<GrpcUpdateEmailFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateEmailFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateEmailFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateEmailFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateEmailFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateEmailFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateEmailFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateEmailFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateEmailFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateEmailFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

