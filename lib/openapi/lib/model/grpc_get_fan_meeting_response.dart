//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetFanMeetingResponse {
  /// Returns a new [GrpcGetFanMeetingResponse] instance.
  GrpcGetFanMeetingResponse({
    this.fanMeeting,
    this.waitSeconds,
    this.isSoldout,
    this.isReservation,
  });

  GrpcFanMeeting fanMeeting;

  int waitSeconds;

  bool isSoldout;

  bool isReservation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetFanMeetingResponse &&
     other.fanMeeting == fanMeeting &&
     other.waitSeconds == waitSeconds &&
     other.isSoldout == isSoldout &&
     other.isReservation == isReservation;

  @override
  int get hashCode =>
    (fanMeeting == null ? 0 : fanMeeting.hashCode) +
    (waitSeconds == null ? 0 : waitSeconds.hashCode) +
    (isSoldout == null ? 0 : isSoldout.hashCode) +
    (isReservation == null ? 0 : isReservation.hashCode);

  @override
  String toString() => 'GrpcGetFanMeetingResponse[fanMeeting=$fanMeeting, waitSeconds=$waitSeconds, isSoldout=$isSoldout, isReservation=$isReservation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeeting != null) {
      json[r'fan_meeting'] = fanMeeting;
    }
    if (waitSeconds != null) {
      json[r'wait_seconds'] = waitSeconds;
    }
    if (isSoldout != null) {
      json[r'is_soldout'] = isSoldout;
    }
    if (isReservation != null) {
      json[r'is_reservation'] = isReservation;
    }
    return json;
  }

  /// Returns a new [GrpcGetFanMeetingResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetFanMeetingResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetFanMeetingResponse(
        fanMeeting: GrpcFanMeeting.fromJson(json[r'fan_meeting']),
        waitSeconds: json[r'wait_seconds'],
        isSoldout: json[r'is_soldout'],
        isReservation: json[r'is_reservation'],
    );

  static List<GrpcGetFanMeetingResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetFanMeetingResponse>[]
      : json.map((dynamic value) => GrpcGetFanMeetingResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetFanMeetingResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetFanMeetingResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetFanMeetingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetFanMeetingResponse-objects as value to a dart map
  static Map<String, List<GrpcGetFanMeetingResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetFanMeetingResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetFanMeetingResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

