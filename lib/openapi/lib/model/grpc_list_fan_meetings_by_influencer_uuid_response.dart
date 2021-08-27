//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListFanMeetingsByInfluencerUUIDResponse {
  /// Returns a new [GrpcListFanMeetingsByInfluencerUUIDResponse] instance.
  GrpcListFanMeetingsByInfluencerUUIDResponse({
    this.fanMeeting = const [],
  });

  List<GrpcFanMeeting> fanMeeting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListFanMeetingsByInfluencerUUIDResponse &&
     other.fanMeeting == fanMeeting;

  @override
  int get hashCode =>
    (fanMeeting == null ? 0 : fanMeeting.hashCode);

  @override
  String toString() => 'GrpcListFanMeetingsByInfluencerUUIDResponse[fanMeeting=$fanMeeting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeeting != null) {
      json[r'fan_meeting'] = fanMeeting;
    }
    return json;
  }

  /// Returns a new [GrpcListFanMeetingsByInfluencerUUIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListFanMeetingsByInfluencerUUIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListFanMeetingsByInfluencerUUIDResponse(
        fanMeeting: GrpcFanMeeting.listFromJson(json[r'fan_meeting']),
    );

  static List<GrpcListFanMeetingsByInfluencerUUIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListFanMeetingsByInfluencerUUIDResponse>[]
      : json.map((dynamic value) => GrpcListFanMeetingsByInfluencerUUIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListFanMeetingsByInfluencerUUIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListFanMeetingsByInfluencerUUIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListFanMeetingsByInfluencerUUIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListFanMeetingsByInfluencerUUIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListFanMeetingsByInfluencerUUIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListFanMeetingsByInfluencerUUIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListFanMeetingsByInfluencerUUIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

