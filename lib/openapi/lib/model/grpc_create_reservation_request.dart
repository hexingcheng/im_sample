//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateReservationRequest {
  /// Returns a new [GrpcCreateReservationRequest] instance.
  GrpcCreateReservationRequest({
    this.fanMeetingId,
    this.fanUuid,
    this.serialCodeId,
  });

  int fanMeetingId;

  String fanUuid;

  int serialCodeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateReservationRequest &&
     other.fanMeetingId == fanMeetingId &&
     other.fanUuid == fanUuid &&
     other.serialCodeId == serialCodeId;

  @override
  int get hashCode =>
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (serialCodeId == null ? 0 : serialCodeId.hashCode);

  @override
  String toString() => 'GrpcCreateReservationRequest[fanMeetingId=$fanMeetingId, fanUuid=$fanUuid, serialCodeId=$serialCodeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanMeetingId != null) {
      json[r'fan_meeting_id'] = fanMeetingId;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (serialCodeId != null) {
      json[r'serial_code_id'] = serialCodeId;
    }
    return json;
  }

  /// Returns a new [GrpcCreateReservationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateReservationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateReservationRequest(
        fanMeetingId: json[r'fan_meeting_id'],
        fanUuid: json[r'fan_uuid'],
        serialCodeId: json[r'serial_code_id'],
    );

  static List<GrpcCreateReservationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateReservationRequest>[]
      : json.map((dynamic value) => GrpcCreateReservationRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateReservationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateReservationRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateReservationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateReservationRequest-objects as value to a dart map
  static Map<String, List<GrpcCreateReservationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateReservationRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateReservationRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

