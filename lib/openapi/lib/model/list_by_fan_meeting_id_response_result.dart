//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListByFanMeetingIDResponseResult {
  /// Returns a new [ListByFanMeetingIDResponseResult] instance.
  ListByFanMeetingIDResponseResult({
    this.fan,
    this.state,
    this.reservationId,
  });

  GrpcFan fan;

  GrpcReservationState state;

  int reservationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListByFanMeetingIDResponseResult &&
     other.fan == fan &&
     other.state == state &&
     other.reservationId == reservationId;

  @override
  int get hashCode =>
    (fan == null ? 0 : fan.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (reservationId == null ? 0 : reservationId.hashCode);

  @override
  String toString() => 'ListByFanMeetingIDResponseResult[fan=$fan, state=$state, reservationId=$reservationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fan != null) {
      json[r'fan'] = fan;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    return json;
  }

  /// Returns a new [ListByFanMeetingIDResponseResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListByFanMeetingIDResponseResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListByFanMeetingIDResponseResult(
        fan: GrpcFan.fromJson(json[r'fan']),
        state: GrpcReservationState.fromJson(json[r'state']),
        reservationId: json[r'reservation_id'],
    );

  static List<ListByFanMeetingIDResponseResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListByFanMeetingIDResponseResult>[]
      : json.map((dynamic value) => ListByFanMeetingIDResponseResult.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListByFanMeetingIDResponseResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListByFanMeetingIDResponseResult>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListByFanMeetingIDResponseResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListByFanMeetingIDResponseResult-objects as value to a dart map
  static Map<String, List<ListByFanMeetingIDResponseResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListByFanMeetingIDResponseResult>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListByFanMeetingIDResponseResult.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

