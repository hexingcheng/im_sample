//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCallTransaction {
  /// Returns a new [GrpcCallTransaction] instance.
  GrpcCallTransaction({
    this.callUuid,
    this.influencerUuid,
    this.influencerDisplayName,
    this.fanMeetingId,
    this.reservationId,
    this.updatedAt,
  });

  String callUuid;

  String influencerUuid;

  String influencerDisplayName;

  String fanMeetingId;

  String reservationId;

  GrpcTimestamp updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCallTransaction &&
     other.callUuid == callUuid &&
     other.influencerUuid == influencerUuid &&
     other.influencerDisplayName == influencerDisplayName &&
     other.fanMeetingId == fanMeetingId &&
     other.reservationId == reservationId &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (callUuid == null ? 0 : callUuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (influencerDisplayName == null ? 0 : influencerDisplayName.hashCode) +
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (reservationId == null ? 0 : reservationId.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'GrpcCallTransaction[callUuid=$callUuid, influencerUuid=$influencerUuid, influencerDisplayName=$influencerDisplayName, fanMeetingId=$fanMeetingId, reservationId=$reservationId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    return json;
  }

  /// Returns a new [GrpcCallTransaction] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCallTransaction fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCallTransaction(
        callUuid: json[r'call_uuid'],
        influencerUuid: json[r'influencer_uuid'],
        influencerDisplayName: json[r'influencer_display_name'],
        fanMeetingId: json[r'fan_meeting_id'],
        reservationId: json[r'reservation_id'],
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
    );

  static List<GrpcCallTransaction> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCallTransaction>[]
      : json.map((dynamic value) => GrpcCallTransaction.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCallTransaction> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCallTransaction>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCallTransaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCallTransaction-objects as value to a dart map
  static Map<String, List<GrpcCallTransaction>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCallTransaction>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCallTransaction.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

