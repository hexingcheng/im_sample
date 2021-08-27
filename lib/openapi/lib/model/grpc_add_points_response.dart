//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcAddPointsResponse {
  /// Returns a new [GrpcAddPointsResponse] instance.
  GrpcAddPointsResponse({
    this.points,
  });

  int points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcAddPointsResponse &&
     other.points == points;

  @override
  int get hashCode =>
    (points == null ? 0 : points.hashCode);

  @override
  String toString() => 'GrpcAddPointsResponse[points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (points != null) {
      json[r'points'] = points;
    }
    return json;
  }

  /// Returns a new [GrpcAddPointsResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcAddPointsResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcAddPointsResponse(
        points: json[r'points'],
    );

  static List<GrpcAddPointsResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcAddPointsResponse>[]
      : json.map((dynamic value) => GrpcAddPointsResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcAddPointsResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcAddPointsResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcAddPointsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcAddPointsResponse-objects as value to a dart map
  static Map<String, List<GrpcAddPointsResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcAddPointsResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcAddPointsResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

