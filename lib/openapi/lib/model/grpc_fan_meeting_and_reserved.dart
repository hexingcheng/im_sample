//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanMeetingAndReserved {
  /// Returns a new [GrpcFanMeetingAndReserved] instance.
  GrpcFanMeetingAndReserved({
    this.fanMeeting,
    this.waitSeconds,
    this.isSoldout,
  });

  GrpcFanMeeting fanMeeting;

  int waitSeconds;

  bool isSoldout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanMeetingAndReserved &&
     other.fanMeeting == fanMeeting &&
     other.waitSeconds == waitSeconds &&
     other.isSoldout == isSoldout;

  @override
  int get hashCode =>
    (fanMeeting == null ? 0 : fanMeeting.hashCode) +
    (waitSeconds == null ? 0 : waitSeconds.hashCode) +
    (isSoldout == null ? 0 : isSoldout.hashCode);

  @override
  String toString() => 'GrpcFanMeetingAndReserved[fanMeeting=$fanMeeting, waitSeconds=$waitSeconds, isSoldout=$isSoldout]';

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
    return json;
  }

  /// Returns a new [GrpcFanMeetingAndReserved] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanMeetingAndReserved fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanMeetingAndReserved(
        fanMeeting: GrpcFanMeeting.fromJson(json[r'fan_meeting']),
        waitSeconds: json[r'wait_seconds'],
        isSoldout: json[r'is_soldout'],
    );

  static List<GrpcFanMeetingAndReserved> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanMeetingAndReserved>[]
      : json.map((dynamic value) => GrpcFanMeetingAndReserved.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanMeetingAndReserved> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanMeetingAndReserved>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanMeetingAndReserved.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanMeetingAndReserved-objects as value to a dart map
  static Map<String, List<GrpcFanMeetingAndReserved>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanMeetingAndReserved>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanMeetingAndReserved.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

