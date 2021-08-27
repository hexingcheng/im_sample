//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateEmailFanResponse {
  /// Returns a new [GrpcUpdateEmailFanResponse] instance.
  GrpcUpdateEmailFanResponse({
    this.email,
  });

  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateEmailFanResponse &&
     other.email == email;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode);

  @override
  String toString() => 'GrpcUpdateEmailFanResponse[email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateEmailFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateEmailFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateEmailFanResponse(
        email: json[r'email'],
    );

  static List<GrpcUpdateEmailFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateEmailFanResponse>[]
      : json.map((dynamic value) => GrpcUpdateEmailFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateEmailFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateEmailFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateEmailFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateEmailFanResponse-objects as value to a dart map
  static Map<String, List<GrpcUpdateEmailFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateEmailFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateEmailFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

