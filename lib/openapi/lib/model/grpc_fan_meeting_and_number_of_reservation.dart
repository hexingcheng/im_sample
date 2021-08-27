//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanMeetingAndNumberOfReservation {
  /// Returns a new [GrpcFanMeetingAndNumberOfReservation] instance.
  GrpcFanMeetingAndNumberOfReservation({
    this.fanmeeting,
    this.reservationNum,
  });

  GrpcFanMeeting fanmeeting;

  int reservationNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanMeetingAndNumberOfReservation &&
     other.fanmeeting == fanmeeting &&
     other.reservationNum == reservationNum;

  @override
  int get hashCode =>
    (fanmeeting == null ? 0 : fanmeeting.hashCode) +
    (reservationNum == null ? 0 : reservationNum.hashCode);

  @override
  String toString() => 'GrpcFanMeetingAndNumberOfReservation[fanmeeting=$fanmeeting, reservationNum=$reservationNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanmeeting != null) {
      json[r'fanmeeting'] = fanmeeting;
    }
    if (reservationNum != null) {
      json[r'reservation_num'] = reservationNum;
    }
    return json;
  }

  /// Returns a new [GrpcFanMeetingAndNumberOfReservation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanMeetingAndNumberOfReservation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanMeetingAndNumberOfReservation(
        fanmeeting: GrpcFanMeeting.fromJson(json[r'fanmeeting']),
        reservationNum: json[r'reservation_num'],
    );

  static List<GrpcFanMeetingAndNumberOfReservation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanMeetingAndNumberOfReservation>[]
      : json.map((dynamic value) => GrpcFanMeetingAndNumberOfReservation.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanMeetingAndNumberOfReservation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanMeetingAndNumberOfReservation>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanMeetingAndNumberOfReservation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanMeetingAndNumberOfReservation-objects as value to a dart map
  static Map<String, List<GrpcFanMeetingAndNumberOfReservation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanMeetingAndNumberOfReservation>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanMeetingAndNumberOfReservation.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

