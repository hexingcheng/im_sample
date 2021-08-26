//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcJoinedRoom {
  /// Returns a new [GrpcJoinedRoom] instance.
  GrpcJoinedRoom({
    this.id,
    this.talkRoomUuid,
    this.fanUuid,
    this.influencerUuid,
    this.userType,
    this.readAt,
    this.createdAt,
    this.updatedAt,
  });

  int id;

  String talkRoomUuid;

  String fanUuid;

  String influencerUuid;

  GrpcUserType userType;

  GrpcTimestamp readAt;

  GrpcTimestamp createdAt;

  GrpcTimestamp updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcJoinedRoom &&
     other.id == id &&
     other.talkRoomUuid == talkRoomUuid &&
     other.fanUuid == fanUuid &&
     other.influencerUuid == influencerUuid &&
     other.userType == userType &&
     other.readAt == readAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (talkRoomUuid == null ? 0 : talkRoomUuid.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (userType == null ? 0 : userType.hashCode) +
    (readAt == null ? 0 : readAt.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'GrpcJoinedRoom[id=$id, talkRoomUuid=$talkRoomUuid, fanUuid=$fanUuid, influencerUuid=$influencerUuid, userType=$userType, readAt=$readAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (talkRoomUuid != null) {
      json[r'talk_room_uuid'] = talkRoomUuid;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (userType != null) {
      json[r'user_type'] = userType;
    }
    if (readAt != null) {
      json[r'read_at'] = readAt;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    return json;
  }

  /// Returns a new [GrpcJoinedRoom] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcJoinedRoom fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcJoinedRoom(
        id: json[r'id'],
        talkRoomUuid: json[r'talk_room_uuid'],
        fanUuid: json[r'fan_uuid'],
        influencerUuid: json[r'influencer_uuid'],
        userType: GrpcUserType.fromJson(json[r'user_type']),
        readAt: GrpcTimestamp.fromJson(json[r'read_at']),
        createdAt: GrpcTimestamp.fromJson(json[r'created_at']),
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
    );

  static List<GrpcJoinedRoom> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcJoinedRoom>[]
      : json.map((dynamic value) => GrpcJoinedRoom.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcJoinedRoom> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcJoinedRoom>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcJoinedRoom.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcJoinedRoom-objects as value to a dart map
  static Map<String, List<GrpcJoinedRoom>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcJoinedRoom>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcJoinedRoom.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

