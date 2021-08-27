//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcDeleteFanRequest {
  /// Returns a new [GrpcDeleteFanRequest] instance.
  GrpcDeleteFanRequest({
    this.uuid,
    this.reasonCancelMembership = const [],
    this.body,
  });

  String uuid;

  List<GrpcReasonCancelMembership> reasonCancelMembership;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcDeleteFanRequest &&
     other.uuid == uuid &&
     other.reasonCancelMembership == reasonCancelMembership &&
     other.body == body;

  @override
  int get hashCode =>
    (uuid == null ? 0 : uuid.hashCode) +
    (reasonCancelMembership == null ? 0 : reasonCancelMembership.hashCode) +
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'GrpcDeleteFanRequest[uuid=$uuid, reasonCancelMembership=$reasonCancelMembership, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (reasonCancelMembership != null) {
      json[r'reason_cancel_membership'] = reasonCancelMembership;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [GrpcDeleteFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcDeleteFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcDeleteFanRequest(
        uuid: json[r'uuid'],
        reasonCancelMembership: GrpcReasonCancelMembership.listFromJson(json[r'reason_cancel_membership']),
        body: json[r'body'],
    );

  static List<GrpcDeleteFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcDeleteFanRequest>[]
      : json.map((dynamic value) => GrpcDeleteFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcDeleteFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcDeleteFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcDeleteFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcDeleteFanRequest-objects as value to a dart map
  static Map<String, List<GrpcDeleteFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcDeleteFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcDeleteFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

