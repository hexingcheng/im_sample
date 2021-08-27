//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListByFanMeetingIDResponse {
  /// Returns a new [GrpcListByFanMeetingIDResponse] instance.
  GrpcListByFanMeetingIDResponse({
    this.results = const [],
  });

  List<ListByFanMeetingIDResponseResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListByFanMeetingIDResponse &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'GrpcListByFanMeetingIDResponse[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (results != null) {
      json[r'results'] = results;
    }
    return json;
  }

  /// Returns a new [GrpcListByFanMeetingIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListByFanMeetingIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListByFanMeetingIDResponse(
        results: ListByFanMeetingIDResponseResult.listFromJson(json[r'results']),
    );

  static List<GrpcListByFanMeetingIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListByFanMeetingIDResponse>[]
      : json.map((dynamic value) => GrpcListByFanMeetingIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListByFanMeetingIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListByFanMeetingIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListByFanMeetingIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListByFanMeetingIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListByFanMeetingIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListByFanMeetingIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListByFanMeetingIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

