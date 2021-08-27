//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadTencentInstantMessageLogByFanMeetingRequest {
  /// Returns a new [GrpcUploadTencentInstantMessageLogByFanMeetingRequest] instance.
  GrpcUploadTencentInstantMessageLogByFanMeetingRequest({
    this.influencerUuid,
    this.fileName,
    this.logFileByte,
  });

  String influencerUuid;

  String fileName;

  String logFileByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadTencentInstantMessageLogByFanMeetingRequest &&
     other.influencerUuid == influencerUuid &&
     other.fileName == fileName &&
     other.logFileByte == logFileByte;

  @override
  int get hashCode =>
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (logFileByte == null ? 0 : logFileByte.hashCode);

  @override
  String toString() => 'GrpcUploadTencentInstantMessageLogByFanMeetingRequest[influencerUuid=$influencerUuid, fileName=$fileName, logFileByte=$logFileByte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (fileName != null) {
      json[r'file_name'] = fileName;
    }
    if (logFileByte != null) {
      json[r'log_file_byte'] = logFileByte;
    }
    return json;
  }

  /// Returns a new [GrpcUploadTencentInstantMessageLogByFanMeetingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadTencentInstantMessageLogByFanMeetingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadTencentInstantMessageLogByFanMeetingRequest(
        influencerUuid: json[r'influencer_uuid'],
        fileName: json[r'file_name'],
        logFileByte: json[r'log_file_byte'],
    );

  static List<GrpcUploadTencentInstantMessageLogByFanMeetingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadTencentInstantMessageLogByFanMeetingRequest>[]
      : json.map((dynamic value) => GrpcUploadTencentInstantMessageLogByFanMeetingRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadTencentInstantMessageLogByFanMeetingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadTencentInstantMessageLogByFanMeetingRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadTencentInstantMessageLogByFanMeetingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadTencentInstantMessageLogByFanMeetingRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadTencentInstantMessageLogByFanMeetingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadTencentInstantMessageLogByFanMeetingRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadTencentInstantMessageLogByFanMeetingRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

