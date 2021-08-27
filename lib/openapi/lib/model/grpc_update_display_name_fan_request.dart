//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateDisplayNameFanRequest {
  /// Returns a new [GrpcUpdateDisplayNameFanRequest] instance.
  GrpcUpdateDisplayNameFanRequest({
    this.displayName,
    this.uuid,
    this.option,
  });

  String displayName;

  String uuid;

  GrpcOption option;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateDisplayNameFanRequest &&
     other.displayName == displayName &&
     other.uuid == uuid &&
     other.option == option;

  @override
  int get hashCode =>
    (displayName == null ? 0 : displayName.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (option == null ? 0 : option.hashCode);

  @override
  String toString() => 'GrpcUpdateDisplayNameFanRequest[displayName=$displayName, uuid=$uuid, option=$option]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (displayName != null) {
      json[r'display_name'] = displayName;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (option != null) {
      json[r'option'] = option;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateDisplayNameFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateDisplayNameFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateDisplayNameFanRequest(
        displayName: json[r'display_name'],
        uuid: json[r'uuid'],
        option: GrpcOption.fromJson(json[r'option']),
    );

  static List<GrpcUpdateDisplayNameFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateDisplayNameFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateDisplayNameFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateDisplayNameFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateDisplayNameFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateDisplayNameFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateDisplayNameFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateDisplayNameFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateDisplayNameFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateDisplayNameFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

