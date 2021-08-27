//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanNotificationResponse {
  /// Returns a new [GrpcFanNotificationResponse] instance.
  GrpcFanNotificationResponse({
    this.invalidFanUuids = const [],
  });

  List<String> invalidFanUuids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanNotificationResponse &&
     other.invalidFanUuids == invalidFanUuids;

  @override
  int get hashCode =>
    (invalidFanUuids == null ? 0 : invalidFanUuids.hashCode);

  @override
  String toString() => 'GrpcFanNotificationResponse[invalidFanUuids=$invalidFanUuids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (invalidFanUuids != null) {
      json[r'invalid_fan_uuids'] = invalidFanUuids;
    }
    return json;
  }

  /// Returns a new [GrpcFanNotificationResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanNotificationResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanNotificationResponse(
        invalidFanUuids: json[r'invalid_fan_uuids'] == null
          ? null
          : (json[r'invalid_fan_uuids'] as List).cast<String>(),
    );

  static List<GrpcFanNotificationResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanNotificationResponse>[]
      : json.map((dynamic value) => GrpcFanNotificationResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanNotificationResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanNotificationResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanNotificationResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanNotificationResponse-objects as value to a dart map
  static Map<String, List<GrpcFanNotificationResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanNotificationResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanNotificationResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

