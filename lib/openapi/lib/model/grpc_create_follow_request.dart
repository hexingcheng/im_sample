//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateFollowRequest {
  /// Returns a new [GrpcCreateFollowRequest] instance.
  GrpcCreateFollowRequest({
    this.fanUuid,
    this.influencerUuid,
  });

  String fanUuid;

  String influencerUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateFollowRequest &&
     other.fanUuid == fanUuid &&
     other.influencerUuid == influencerUuid;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode);

  @override
  String toString() => 'GrpcCreateFollowRequest[fanUuid=$fanUuid, influencerUuid=$influencerUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    return json;
  }

  /// Returns a new [GrpcCreateFollowRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateFollowRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateFollowRequest(
        fanUuid: json[r'fan_uuid'],
        influencerUuid: json[r'influencer_uuid'],
    );

  static List<GrpcCreateFollowRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateFollowRequest>[]
      : json.map((dynamic value) => GrpcCreateFollowRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateFollowRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateFollowRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateFollowRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateFollowRequest-objects as value to a dart map
  static Map<String, List<GrpcCreateFollowRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateFollowRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateFollowRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

