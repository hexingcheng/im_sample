//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetNumCallsResponse {
  /// Returns a new [GrpcGetNumCallsResponse] instance.
  GrpcGetNumCallsResponse({
    this.numCalls,
  });

  int numCalls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetNumCallsResponse &&
     other.numCalls == numCalls;

  @override
  int get hashCode =>
    (numCalls == null ? 0 : numCalls.hashCode);

  @override
  String toString() => 'GrpcGetNumCallsResponse[numCalls=$numCalls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (numCalls != null) {
      json[r'numCalls'] = numCalls;
    }
    return json;
  }

  /// Returns a new [GrpcGetNumCallsResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetNumCallsResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetNumCallsResponse(
        numCalls: json[r'numCalls'],
    );

  static List<GrpcGetNumCallsResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetNumCallsResponse>[]
      : json.map((dynamic value) => GrpcGetNumCallsResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetNumCallsResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetNumCallsResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetNumCallsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetNumCallsResponse-objects as value to a dart map
  static Map<String, List<GrpcGetNumCallsResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetNumCallsResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetNumCallsResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

