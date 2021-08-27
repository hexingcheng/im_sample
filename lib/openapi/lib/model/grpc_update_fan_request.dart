//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateFanRequest {
  /// Returns a new [GrpcUpdateFanRequest] instance.
  GrpcUpdateFanRequest({
    this.fan,
    this.option,
  });

  GrpcFan fan;

  GrpcOption option;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateFanRequest &&
     other.fan == fan &&
     other.option == option;

  @override
  int get hashCode =>
    (fan == null ? 0 : fan.hashCode) +
    (option == null ? 0 : option.hashCode);

  @override
  String toString() => 'GrpcUpdateFanRequest[fan=$fan, option=$option]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fan != null) {
      json[r'fan'] = fan;
    }
    if (option != null) {
      json[r'option'] = option;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateFanRequest(
        fan: GrpcFan.fromJson(json[r'fan']),
        option: GrpcOption.fromJson(json[r'option']),
    );

  static List<GrpcUpdateFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

