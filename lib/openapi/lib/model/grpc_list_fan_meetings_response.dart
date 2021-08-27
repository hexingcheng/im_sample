//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListFanMeetingsResponse {
  /// Returns a new [GrpcListFanMeetingsResponse] instance.
  GrpcListFanMeetingsResponse({
    this.fanMeetingAndReserved = const [],
    this.nextPageToken,
  });

  List<GrpcFanMeetingAndReserved> fanMeetingAndReserved;

  String nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListFanMeetingsResponse &&
     other.fanMeetingAndReserved == fanMeetingAndReserved &&
     other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
    (fanMeetingAndReserved == null ? 0 : fanMeetingAndReserved.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken.hashCode);

  @override
  String toString() => 'GrpcListFanMeetingsResponse[fanMeetingAndReserved=$fanMeetingAndReserved, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeetingAndReserved != null) {
      json[r'fan_meeting_and_reserved'] = fanMeetingAndReserved;
    }
    if (nextPageToken != null) {
      json[r'next_page_token'] = nextPageToken;
    }
    return json;
  }

  /// Returns a new [GrpcListFanMeetingsResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListFanMeetingsResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListFanMeetingsResponse(
        fanMeetingAndReserved: GrpcFanMeetingAndReserved.listFromJson(json[r'fan_meeting_and_reserved']),
        nextPageToken: json[r'next_page_token'],
    );

  static List<GrpcListFanMeetingsResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListFanMeetingsResponse>[]
      : json.map((dynamic value) => GrpcListFanMeetingsResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListFanMeetingsResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListFanMeetingsResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListFanMeetingsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListFanMeetingsResponse-objects as value to a dart map
  static Map<String, List<GrpcListFanMeetingsResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListFanMeetingsResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListFanMeetingsResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

