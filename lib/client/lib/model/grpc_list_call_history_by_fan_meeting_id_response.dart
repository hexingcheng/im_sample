//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListCallHistoryByFanMeetingIDResponse {
  /// Returns a new [GrpcListCallHistoryByFanMeetingIDResponse] instance.
  GrpcListCallHistoryByFanMeetingIDResponse({
    this.callHistory = const [],
  });

  List<GrpcReservationAndFan> callHistory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListCallHistoryByFanMeetingIDResponse &&
     other.callHistory == callHistory;

  @override
  int get hashCode =>
    (callHistory == null ? 0 : callHistory.hashCode);

  @override
  String toString() => 'GrpcListCallHistoryByFanMeetingIDResponse[callHistory=$callHistory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (callHistory != null) {
      json[r'call_history'] = callHistory;
    }
    return json;
  }

  /// Returns a new [GrpcListCallHistoryByFanMeetingIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListCallHistoryByFanMeetingIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListCallHistoryByFanMeetingIDResponse(
        callHistory: GrpcReservationAndFan.listFromJson(json[r'call_history']),
    );

  static List<GrpcListCallHistoryByFanMeetingIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListCallHistoryByFanMeetingIDResponse>[]
      : json.map((dynamic value) => GrpcListCallHistoryByFanMeetingIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListCallHistoryByFanMeetingIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListCallHistoryByFanMeetingIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListCallHistoryByFanMeetingIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListCallHistoryByFanMeetingIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListCallHistoryByFanMeetingIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListCallHistoryByFanMeetingIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListCallHistoryByFanMeetingIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

