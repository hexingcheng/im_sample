//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateFanMeetingResponse {
  /// Returns a new [GrpcCreateFanMeetingResponse] instance.
  GrpcCreateFanMeetingResponse({
    this.id,
  });

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateFanMeetingResponse &&
     other.id == id;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'GrpcCreateFanMeetingResponse[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [GrpcCreateFanMeetingResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateFanMeetingResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateFanMeetingResponse(
        id: json[r'id'],
    );

  static List<GrpcCreateFanMeetingResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateFanMeetingResponse>[]
      : json.map((dynamic value) => GrpcCreateFanMeetingResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateFanMeetingResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateFanMeetingResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateFanMeetingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateFanMeetingResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateFanMeetingResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateFanMeetingResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateFanMeetingResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

