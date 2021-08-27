//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListJoinedRoomByFanResponseRoom {
  /// Returns a new [ListJoinedRoomByFanResponseRoom] instance.
  ListJoinedRoomByFanResponseRoom({
    this.joinedRoom,
    this.influencer,
    this.latestMessage,
    this.latestMessageUpdatedAt,
  });

  GrpcJoinedRoom joinedRoom;

  GrpcInfluencer influencer;

  String latestMessage;

  GrpcTimestamp latestMessageUpdatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListJoinedRoomByFanResponseRoom &&
     other.joinedRoom == joinedRoom &&
     other.influencer == influencer &&
     other.latestMessage == latestMessage &&
     other.latestMessageUpdatedAt == latestMessageUpdatedAt;

  @override
  int get hashCode =>
    (joinedRoom == null ? 0 : joinedRoom.hashCode) +
    (influencer == null ? 0 : influencer.hashCode) +
    (latestMessage == null ? 0 : latestMessage.hashCode) +
    (latestMessageUpdatedAt == null ? 0 : latestMessageUpdatedAt.hashCode);

  @override
  String toString() => 'ListJoinedRoomByFanResponseRoom[joinedRoom=$joinedRoom, influencer=$influencer, latestMessage=$latestMessage, latestMessageUpdatedAt=$latestMessageUpdatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (joinedRoom != null) {
      json[r'joined_room'] = joinedRoom;
    }
    if (influencer != null) {
      json[r'influencer'] = influencer;
    }
    if (latestMessage != null) {
      json[r'latest_message'] = latestMessage;
    }
    if (latestMessageUpdatedAt != null) {
      json[r'latest_message_updated_at'] = latestMessageUpdatedAt;
    }
    return json;
  }

  /// Returns a new [ListJoinedRoomByFanResponseRoom] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ListJoinedRoomByFanResponseRoom fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ListJoinedRoomByFanResponseRoom(
        joinedRoom: GrpcJoinedRoom.fromJson(json[r'joined_room']),
        influencer: GrpcInfluencer.fromJson(json[r'influencer']),
        latestMessage: json[r'latest_message'],
        latestMessageUpdatedAt: GrpcTimestamp.fromJson(json[r'latest_message_updated_at']),
    );

  static List<ListJoinedRoomByFanResponseRoom> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ListJoinedRoomByFanResponseRoom>[]
      : json.map((dynamic value) => ListJoinedRoomByFanResponseRoom.fromJson(value)).toList(growable: true == growable);

  static Map<String, ListJoinedRoomByFanResponseRoom> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ListJoinedRoomByFanResponseRoom>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ListJoinedRoomByFanResponseRoom.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListJoinedRoomByFanResponseRoom-objects as value to a dart map
  static Map<String, List<ListJoinedRoomByFanResponseRoom>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListJoinedRoomByFanResponseRoom>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ListJoinedRoomByFanResponseRoom.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

