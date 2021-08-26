//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencerSignUpResponse {
  /// Returns a new [GrpcInfluencerSignUpResponse] instance.
  GrpcInfluencerSignUpResponse({
    this.uuid,
  });

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencerSignUpResponse &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcInfluencerSignUpResponse[uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencerSignUpResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencerSignUpResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencerSignUpResponse(
        uuid: json[r'uuid'],
    );

  static List<GrpcInfluencerSignUpResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerSignUpResponse>[]
      : json.map((dynamic value) => GrpcInfluencerSignUpResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencerSignUpResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencerSignUpResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencerSignUpResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencerSignUpResponse-objects as value to a dart map
  static Map<String, List<GrpcInfluencerSignUpResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencerSignUpResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencerSignUpResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

