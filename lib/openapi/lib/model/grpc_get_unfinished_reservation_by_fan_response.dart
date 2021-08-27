//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetUnfinishedReservationByFanResponse {
  /// Returns a new [GrpcGetUnfinishedReservationByFanResponse] instance.
  GrpcGetUnfinishedReservationByFanResponse({
    this.fanMeeting,
    this.waitNum,
  });

  GrpcFanMeeting fanMeeting;

  int waitNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetUnfinishedReservationByFanResponse &&
     other.fanMeeting == fanMeeting &&
     other.waitNum == waitNum;

  @override
  int get hashCode =>
    (fanMeeting == null ? 0 : fanMeeting.hashCode) +
    (waitNum == null ? 0 : waitNum.hashCode);

  @override
  String toString() => 'GrpcGetUnfinishedReservationByFanResponse[fanMeeting=$fanMeeting, waitNum=$waitNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeeting != null) {
      json[r'fan_meeting'] = fanMeeting;
    }
    if (waitNum != null) {
      json[r'wait_num'] = waitNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetUnfinishedReservationByFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetUnfinishedReservationByFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetUnfinishedReservationByFanResponse(
        fanMeeting: GrpcFanMeeting.fromJson(json[r'fan_meeting']),
        waitNum: json[r'wait_num'],
    );

  static List<GrpcGetUnfinishedReservationByFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetUnfinishedReservationByFanResponse>[]
      : json.map((dynamic value) => GrpcGetUnfinishedReservationByFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetUnfinishedReservationByFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetUnfinishedReservationByFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetUnfinishedReservationByFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetUnfinishedReservationByFanResponse-objects as value to a dart map
  static Map<String, List<GrpcGetUnfinishedReservationByFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetUnfinishedReservationByFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetUnfinishedReservationByFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

