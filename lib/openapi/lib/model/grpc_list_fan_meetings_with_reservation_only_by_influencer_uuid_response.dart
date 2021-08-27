//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse {
  /// Returns a new [GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse] instance.
  GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse({
    this.fanMeetings = const [],
    this.nextSeekDate,
  });

  List<GrpcFanMeetingAndNumberOfReservation> fanMeetings;

  int nextSeekDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse &&
     other.fanMeetings == fanMeetings &&
     other.nextSeekDate == nextSeekDate;

  @override
  int get hashCode =>
    (fanMeetings == null ? 0 : fanMeetings.hashCode) +
    (nextSeekDate == null ? 0 : nextSeekDate.hashCode);

  @override
  String toString() => 'GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse[fanMeetings=$fanMeetings, nextSeekDate=$nextSeekDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeetings != null) {
      json[r'fan_meetings'] = fanMeetings;
    }
    if (nextSeekDate != null) {
      json[r'next_seek_date'] = nextSeekDate;
    }
    return json;
  }

  /// Returns a new [GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse(
        fanMeetings: GrpcFanMeetingAndNumberOfReservation.listFromJson(json[r'fan_meetings']),
        nextSeekDate: json[r'next_seek_date'],
    );

  static List<GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse>[]
      : json.map((dynamic value) => GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

