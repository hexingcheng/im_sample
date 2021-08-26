//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdatePasswordFanRequest {
  /// Returns a new [GrpcUpdatePasswordFanRequest] instance.
  GrpcUpdatePasswordFanRequest({
    this.email,
    this.password,
  });

  String email;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdatePasswordFanRequest &&
     other.email == email &&
     other.password == password;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'GrpcUpdatePasswordFanRequest[email=$email, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [GrpcUpdatePasswordFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdatePasswordFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdatePasswordFanRequest(
        email: json[r'email'],
        password: json[r'password'],
    );

  static List<GrpcUpdatePasswordFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdatePasswordFanRequest>[]
      : json.map((dynamic value) => GrpcUpdatePasswordFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdatePasswordFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdatePasswordFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdatePasswordFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdatePasswordFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdatePasswordFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdatePasswordFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdatePasswordFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

