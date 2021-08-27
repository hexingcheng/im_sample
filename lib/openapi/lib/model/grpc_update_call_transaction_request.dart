//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateCallTransactionRequest {
  /// Returns a new [GrpcUpdateCallTransactionRequest] instance.
  GrpcUpdateCallTransactionRequest({
    this.fanUuid,
    this.callUuid,
    this.influencerUuid,
    this.influencerDisplayName,
    this.fanMeetingId,
    this.reservationId,
  });

  String fanUuid;

  String callUuid;

  String influencerUuid;

  String influencerDisplayName;

  String fanMeetingId;

  String reservationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateCallTransactionRequest &&
     other.fanUuid == fanUuid &&
     other.callUuid == callUuid &&
     other.influencerUuid == influencerUuid &&
     other.influencerDisplayName == influencerDisplayName &&
     other.fanMeetingId == fanMeetingId &&
     other.reservationId == reservationId;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (callUuid == null ? 0 : callUuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (influencerDisplayName == null ? 0 : influencerDisplayName.hashCode) +
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (reservationId == null ? 0 : reservationId.hashCode);

  @override
  String toString() => 'GrpcUpdateCallTransactionRequest[fanUuid=$fanUuid, callUuid=$callUuid, influencerUuid=$influencerUuid, influencerDisplayName=$influencerDisplayName, fanMeetingId=$fanMeetingId, reservationId=$reservationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (callUuid != null) {
      json[r'call_uuid'] = callUuid;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (influencerDisplayName != null) {
      json[r'influencer_display_name'] = influencerDisplayName;
    }
    if (fanMeetingId != null) {
      json[r'fan_meeting_id'] = fanMeetingId;
    }
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateCallTransactionRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateCallTransactionRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateCallTransactionRequest(
        fanUuid: json[r'fan_uuid'],
        callUuid: json[r'call_uuid'],
        influencerUuid: json[r'influencer_uuid'],
        influencerDisplayName: json[r'influencer_display_name'],
        fanMeetingId: json[r'fan_meeting_id'],
        reservationId: json[r'reservation_id'],
    );

  static List<GrpcUpdateCallTransactionRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateCallTransactionRequest>[]
      : json.map((dynamic value) => GrpcUpdateCallTransactionRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateCallTransactionRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateCallTransactionRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateCallTransactionRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateCallTransactionRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateCallTransactionRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateCallTransactionRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateCallTransactionRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

