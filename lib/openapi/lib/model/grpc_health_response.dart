//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcHealthResponse {
  /// Returns a new [GrpcHealthResponse] instance.
  GrpcHealthResponse({
    this.result,
  });

  String result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcHealthResponse &&
     other.result == result;

  @override
  int get hashCode =>
    (result == null ? 0 : result.hashCode);

  @override
  String toString() => 'GrpcHealthResponse[result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (result != null) {
      json[r'result'] = result;
    }
    return json;
  }

  /// Returns a new [GrpcHealthResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcHealthResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcHealthResponse(
        result: json[r'result'],
    );

  static List<GrpcHealthResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcHealthResponse>[]
      : json.map((dynamic value) => GrpcHealthResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcHealthResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcHealthResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcHealthResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcHealthResponse-objects as value to a dart map
  static Map<String, List<GrpcHealthResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcHealthResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcHealthResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

