//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateDisplayNameFanResponse {
  /// Returns a new [GrpcUpdateDisplayNameFanResponse] instance.
  GrpcUpdateDisplayNameFanResponse({
    this.displayName,
  });

  String displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateDisplayNameFanResponse &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    (displayName == null ? 0 : displayName.hashCode);

  @override
  String toString() => 'GrpcUpdateDisplayNameFanResponse[displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (displayName != null) {
      json[r'display_name'] = displayName;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateDisplayNameFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateDisplayNameFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateDisplayNameFanResponse(
        displayName: json[r'display_name'],
    );

  static List<GrpcUpdateDisplayNameFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateDisplayNameFanResponse>[]
      : json.map((dynamic value) => GrpcUpdateDisplayNameFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateDisplayNameFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateDisplayNameFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateDisplayNameFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateDisplayNameFanResponse-objects as value to a dart map
  static Map<String, List<GrpcUpdateDisplayNameFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateDisplayNameFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateDisplayNameFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

