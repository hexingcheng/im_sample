//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCallToFanRequest {
  /// Returns a new [GrpcCallToFanRequest] instance.
  GrpcCallToFanRequest({
    this.influencerUuid,
    this.fanMeetingId,
    this.fanUuid,
    this.action,
  });

  String influencerUuid;

  int fanMeetingId;

  String fanUuid;

  CallToFanRequestAction action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCallToFanRequest &&
     other.influencerUuid == influencerUuid &&
     other.fanMeetingId == fanMeetingId &&
     other.fanUuid == fanUuid &&
     other.action == action;

  @override
  int get hashCode =>
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (action == null ? 0 : action.hashCode);

  @override
  String toString() => 'GrpcCallToFanRequest[influencerUuid=$influencerUuid, fanMeetingId=$fanMeetingId, fanUuid=$fanUuid, action=$action]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (fanMeetingId != null) {
      json[r'fan_meeting_id'] = fanMeetingId;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (action != null) {
      json[r'action'] = action;
    }
    return json;
  }

  /// Returns a new [GrpcCallToFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCallToFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCallToFanRequest(
        influencerUuid: json[r'influencer_uuid'],
        fanMeetingId: json[r'fan_meeting_id'],
        fanUuid: json[r'fan_uuid'],
        action: CallToFanRequestAction.fromJson(json[r'action']),
    );

  static List<GrpcCallToFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCallToFanRequest>[]
      : json.map((dynamic value) => GrpcCallToFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCallToFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCallToFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCallToFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCallToFanRequest-objects as value to a dart map
  static Map<String, List<GrpcCallToFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCallToFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCallToFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

