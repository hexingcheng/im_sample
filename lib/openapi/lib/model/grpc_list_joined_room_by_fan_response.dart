//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListJoinedRoomByFanResponse {
  /// Returns a new [GrpcListJoinedRoomByFanResponse] instance.
  GrpcListJoinedRoomByFanResponse({
    this.joinedRooms = const [],
  });

  List<ListJoinedRoomByFanResponseRoom> joinedRooms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListJoinedRoomByFanResponse &&
     other.joinedRooms == joinedRooms;

  @override
  int get hashCode =>
    (joinedRooms == null ? 0 : joinedRooms.hashCode);

  @override
  String toString() => 'GrpcListJoinedRoomByFanResponse[joinedRooms=$joinedRooms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (joinedRooms != null) {
      json[r'joined_rooms'] = joinedRooms;
    }
    return json;
  }

  /// Returns a new [GrpcListJoinedRoomByFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListJoinedRoomByFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListJoinedRoomByFanResponse(
        joinedRooms: ListJoinedRoomByFanResponseRoom.listFromJson(json[r'joined_rooms']),
    );

  static List<GrpcListJoinedRoomByFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListJoinedRoomByFanResponse>[]
      : json.map((dynamic value) => GrpcListJoinedRoomByFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListJoinedRoomByFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListJoinedRoomByFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListJoinedRoomByFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListJoinedRoomByFanResponse-objects as value to a dart map
  static Map<String, List<GrpcListJoinedRoomByFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListJoinedRoomByFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListJoinedRoomByFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

