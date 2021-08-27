//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanSignUpRequest {
  /// Returns a new [GrpcFanSignUpRequest] instance.
  GrpcFanSignUpRequest({
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
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanSignUpRequest &&
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
  String toString() => 'GrpcFanSignUpRequest[phoneNumber=$phoneNumber, password=$password, apsToken=$apsToken, fcmToken=$fcmToken]';

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

  /// Returns a new [GrpcFanSignUpRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanSignUpRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanSignUpRequest(
        phoneNumber: json[r'phone_number'],
        password: json[r'password'],
        apsToken: json[r'aps_token'],
        fcmToken: json[r'fcm_token'],
    );

  static List<GrpcFanSignUpRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanSignUpRequest>[]
      : json.map((dynamic value) => GrpcFanSignUpRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanSignUpRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanSignUpRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanSignUpRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanSignUpRequest-objects as value to a dart map
  static Map<String, List<GrpcFanSignUpRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanSignUpRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanSignUpRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

