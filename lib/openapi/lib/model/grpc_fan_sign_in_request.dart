//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanSignInRequest {
  /// Returns a new [GrpcFanSignInRequest] instance.
  GrpcFanSignInRequest({
    this.phoneNumber,
    this.password,
    this.apsToken,
    this.fcmToken,
  });

  String phoneNumber;

  String password;

  String apsToken;

  String fcmToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanSignInRequest &&
     other.phoneNumber == phoneNumber &&
     other.password == password &&
     other.apsToken == apsToken &&
     other.fcmToken == fcmToken;

  @override
  int get hashCode =>
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (apsToken == null ? 0 : apsToken.hashCode) +
    (fcmToken == null ? 0 : fcmToken.hashCode);

  @override
  String toString() => 'GrpcFanSignInRequest[phoneNumber=$phoneNumber, password=$password, apsToken=$apsToken, fcmToken=$fcmToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (phoneNumber != null) {
      json[r'phone_number'] = phoneNumber;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    if (apsToken != null) {
      json[r'aps_token'] = apsToken;
    }
    if (fcmToken != null) {
      json[r'fcm_token'] = fcmToken;
    }
    return json;
  }

  /// Returns a new [GrpcFanSignInRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanSignInRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanSignInRequest(
        phoneNumber: json[r'phone_number'],
        password: json[r'password'],
        apsToken: json[r'aps_token'],
        fcmToken: json[r'fcm_token'],
    );

  static List<GrpcFanSignInRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanSignInRequest>[]
      : json.map((dynamic value) => GrpcFanSignInRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanSignInRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanSignInRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanSignInRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanSignInRequest-objects as value to a dart map
  static Map<String, List<GrpcFanSignInRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanSignInRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanSignInRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

