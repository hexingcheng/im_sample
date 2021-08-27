//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencerSignInRequest {
  /// Returns a new [GrpcInfluencerSignInRequest] instance.
  GrpcInfluencerSignInRequest({
    this.email,
    this.apsToken,
  });

  String email;

  String apsToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencerSignInRequest &&
     other.email == email &&
     other.apsToken == apsToken;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (apsToken == null ? 0 : apsToken.hashCode);

  @override
  String toString() => 'GrpcInfluencerSignInRequest[email=$email, apsToken=$apsToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (apsToken != null) {
      json[r'aps_token'] = apsToken;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencerSignInRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencerSignInRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencerSignInRequest(
        email: json[r'email'],
        apsToken: json[r'aps_token'],
    );

  static List<GrpcInfluencerSignInRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerSignInRequest>[]
      : json.map((dynamic value) => GrpcInfluencerSignInRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencerSignInRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencerSignInRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencerSignInRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencerSignInRequest-objects as value to a dart map
  static Map<String, List<GrpcInfluencerSignInRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencerSignInRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencerSignInRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

