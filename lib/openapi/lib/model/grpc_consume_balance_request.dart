//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcConsumeBalanceRequest {
  /// Returns a new [GrpcConsumeBalanceRequest] instance.
  GrpcConsumeBalanceRequest({
    this.fanUuid,
    this.fanMeetingId,
    this.numExtensionTimes,
  });

  String fanUuid;

  int fanMeetingId;

  GrpcNumExtension numExtensionTimes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcConsumeBalanceRequest &&
     other.fanUuid == fanUuid &&
     other.fanMeetingId == fanMeetingId &&
     other.numExtensionTimes == numExtensionTimes;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (fanMeetingId == null ? 0 : fanMeetingId.hashCode) +
    (numExtensionTimes == null ? 0 : numExtensionTimes.hashCode);

  @override
  String toString() => 'GrpcConsumeBalanceRequest[fanUuid=$fanUuid, fanMeetingId=$fanMeetingId, numExtensionTimes=$numExtensionTimes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (fanMeetingId != null) {
      json[r'fan_meeting_id'] = fanMeetingId;
    }
    if (numExtensionTimes != null) {
      json[r'num_extension_times'] = numExtensionTimes;
    }
    return json;
  }

  /// Returns a new [GrpcConsumeBalanceRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcConsumeBalanceRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcConsumeBalanceRequest(
        fanUuid: json[r'fan_uuid'],
        fanMeetingId: json[r'fan_meeting_id'],
        numExtensionTimes: GrpcNumExtension.fromJson(json[r'num_extension_times']),
    );

  static List<GrpcConsumeBalanceRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcConsumeBalanceRequest>[]
      : json.map((dynamic value) => GrpcConsumeBalanceRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcConsumeBalanceRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcConsumeBalanceRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcConsumeBalanceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcConsumeBalanceRequest-objects as value to a dart map
  static Map<String, List<GrpcConsumeBalanceRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcConsumeBalanceRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcConsumeBalanceRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

