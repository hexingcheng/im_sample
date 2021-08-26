//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencerSignInResponse {
  /// Returns a new [GrpcInfluencerSignInResponse] instance.
  GrpcInfluencerSignInResponse({
    this.apiToken,
    this.influencerUuid,
  });

  String apiToken;

  String influencerUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencerSignInResponse &&
     other.apiToken == apiToken &&
     other.influencerUuid == influencerUuid;

  @override
  int get hashCode =>
    (apiToken == null ? 0 : apiToken.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode);

  @override
  String toString() => 'GrpcInfluencerSignInResponse[apiToken=$apiToken, influencerUuid=$influencerUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (apiToken != null) {
      json[r'api_token'] = apiToken;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencerSignInResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencerSignInResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencerSignInResponse(
        apiToken: json[r'api_token'],
        influencerUuid: json[r'influencer_uuid'],
    );

  static List<GrpcInfluencerSignInResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerSignInResponse>[]
      : json.map((dynamic value) => GrpcInfluencerSignInResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencerSignInResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencerSignInResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencerSignInResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencerSignInResponse-objects as value to a dart map
  static Map<String, List<GrpcInfluencerSignInResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencerSignInResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencerSignInResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

