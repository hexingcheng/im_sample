//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListFeaturesResponse {
  /// Returns a new [GrpcListFeaturesResponse] instance.
  GrpcListFeaturesResponse({
    this.feature = const [],
    this.nextPageToken,
  });

  List<GrpcFeature> feature;

  String nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListFeaturesResponse &&
     other.feature == feature &&
     other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
    (feature == null ? 0 : feature.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken.hashCode);

  @override
  String toString() => 'GrpcListFeaturesResponse[feature=$feature, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (feature != null) {
      json[r'feature'] = feature;
    }
    if (nextPageToken != null) {
      json[r'next_page_token'] = nextPageToken;
    }
    return json;
  }

  /// Returns a new [GrpcListFeaturesResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListFeaturesResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListFeaturesResponse(
        feature: GrpcFeature.listFromJson(json[r'feature']),
        nextPageToken: json[r'next_page_token'],
    );

  static List<GrpcListFeaturesResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListFeaturesResponse>[]
      : json.map((dynamic value) => GrpcListFeaturesResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListFeaturesResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListFeaturesResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListFeaturesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListFeaturesResponse-objects as value to a dart map
  static Map<String, List<GrpcListFeaturesResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListFeaturesResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListFeaturesResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

