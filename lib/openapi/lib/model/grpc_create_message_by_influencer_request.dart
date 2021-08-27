//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateMessageByInfluencerRequest {
  /// Returns a new [GrpcCreateMessageByInfluencerRequest] instance.
  GrpcCreateMessageByInfluencerRequest({
    this.reservationId,
    this.text,
    this.influencerUuid,
    this.fanUuid,
  });

  int reservationId;

  String text;

  String influencerUuid;

  String fanUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateMessageByInfluencerRequest &&
     other.reservationId == reservationId &&
     other.text == text &&
     other.influencerUuid == influencerUuid &&
     other.fanUuid == fanUuid;

  @override
  int get hashCode =>
    (reservationId == null ? 0 : reservationId.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode);

  @override
  String toString() => 'GrpcCreateMessageByInfluencerRequest[reservationId=$reservationId, text=$text, influencerUuid=$influencerUuid, fanUuid=$fanUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    return json;
  }

  /// Returns a new [GrpcCreateMessageByInfluencerRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateMessageByInfluencerRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateMessageByInfluencerRequest(
        reservationId: json[r'reservation_id'],
        text: json[r'text'],
        influencerUuid: json[r'influencer_uuid'],
        fanUuid: json[r'fan_uuid'],
    );

  static List<GrpcCreateMessageByInfluencerRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateMessageByInfluencerRequest>[]
      : json.map((dynamic value) => GrpcCreateMessageByInfluencerRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateMessageByInfluencerRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateMessageByInfluencerRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateMessageByInfluencerRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateMessageByInfluencerRequest-objects as value to a dart map
  static Map<String, List<GrpcCreateMessageByInfluencerRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateMessageByInfluencerRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateMessageByInfluencerRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

