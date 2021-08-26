//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcReservation {
  /// Returns a new [GrpcReservation] instance.
  GrpcReservation({
    this.id,
    this.state,
    this.fanUuid,
    this.fanMeetingId,
    this.influencerUuid,
    this.chekiImageUri,
    this.startTime,
    this.finishTime,
    this.createdAt,
    this.updatedAt,
  });

  int id;

  GrpcReservationState state;

  String fanUuid;

  int fanMeetingId;

  String influencerUuid;

  String chekiImageUri;

  GrpcTimestamp startTime;

  GrpcTimestamp finishTime;

  GrpcTimestamp createdAt;

  GrpcTimestamp updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcReservation &&
     other.id == id &&
     other.state == state &&
     other.fanUuid == fanUuid &&
     other.fanMeetingId == fanMeetingId &&
     other.influencerUuid == influencerUuid &&
     other.chekiImageUri == chekiImageUri &&
     other.startTime == startTime &&
     other.finishTime == finishTime &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (chekiImageUri == null ? 0 : chekiImageUri.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (finishTime == null ? 0 : finishTime.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'GrpcReservation[id=$id, state=$state, fanUuid=$fanUuid, fanMeetingId=$fanMeetingId, influencerUuid=$influencerUuid, chekiImageUri=$chekiImageUri, startTime=$startTime, finishTime=$finishTime, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (fanMeetingId != null) {
      json[r'fan_meeting_id'] = fanMeetingId;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (chekiImageUri != null) {
      json[r'cheki_image_uri'] = chekiImageUri;
    }
    if (startTime != null) {
      json[r'start_time'] = startTime;
    }
    if (finishTime != null) {
      json[r'finish_time'] = finishTime;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    return json;
  }

  /// Returns a new [GrpcReservation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcReservation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcReservation(
        id: json[r'id'],
        state: GrpcReservationState.fromJson(json[r'state']),
        fanUuid: json[r'fan_uuid'],
        fanMeetingId: json[r'fan_meeting_id'],
        influencerUuid: json[r'influencer_uuid'],
        chekiImageUri: json[r'cheki_image_uri'],
        startTime: GrpcTimestamp.fromJson(json[r'start_time']),
        finishTime: GrpcTimestamp.fromJson(json[r'finish_time']),
        createdAt: GrpcTimestamp.fromJson(json[r'created_at']),
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
    );

  static List<GrpcReservation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcReservation>[]
      : json.map((dynamic value) => GrpcReservation.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcReservation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcReservation>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcReservation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcReservation-objects as value to a dart map
  static Map<String, List<GrpcReservation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcReservation>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcReservation.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

