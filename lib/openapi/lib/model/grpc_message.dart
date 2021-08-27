//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcMessage {
  /// Returns a new [GrpcMessage] instance.
  GrpcMessage({
    this.id,
    this.talkRoomUuid,
    this.reservationId,
    this.text,
    this.messageType,
    this.fanUuid,
    this.influencerUuid,
    this.senderType,
    this.createdAt,
    this.updatedAt,
  });

  int id;

  String talkRoomUuid;

  int reservationId;

  String text;

  GrpcMessageType messageType;

  String fanUuid;

  String influencerUuid;

  int senderType;

  GrpcTimestamp createdAt;

  GrpcTimestamp updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcMessage &&
     other.id == id &&
     other.talkRoomUuid == talkRoomUuid &&
     other.reservationId == reservationId &&
     other.text == text &&
     other.messageType == messageType &&
     other.fanUuid == fanUuid &&
     other.influencerUuid == influencerUuid &&
     other.senderType == senderType &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (talkRoomUuid == null ? 0 : talkRoomUuid.hashCode) +
    (reservationId == null ? 0 : reservationId.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (messageType == null ? 0 : messageType.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (senderType == null ? 0 : senderType.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'GrpcMessage[id=$id, talkRoomUuid=$talkRoomUuid, reservationId=$reservationId, text=$text, messageType=$messageType, fanUuid=$fanUuid, influencerUuid=$influencerUuid, senderType=$senderType, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (talkRoomUuid != null) {
      json[r'talk_room_uuid'] = talkRoomUuid;
    }
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (messageType != null) {
      json[r'message_type'] = messageType;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (senderType != null) {
      json[r'sender_type'] = senderType;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    return json;
  }

  /// Returns a new [GrpcMessage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcMessage fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcMessage(
        id: json[r'id'],
        talkRoomUuid: json[r'talk_room_uuid'],
        reservationId: json[r'reservation_id'],
        text: json[r'text'],
        messageType: GrpcMessageType.fromJson(json[r'message_type']),
        fanUuid: json[r'fan_uuid'],
        influencerUuid: json[r'influencer_uuid'],
        senderType: json[r'sender_type'],
        createdAt: GrpcTimestamp.fromJson(json[r'created_at']),
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
    );

  static List<GrpcMessage> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcMessage>[]
      : json.map((dynamic value) => GrpcMessage.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcMessage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcMessage>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcMessage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcMessage-objects as value to a dart map
  static Map<String, List<GrpcMessage>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcMessage>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcMessage.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

