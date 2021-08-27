//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadTencentLiteAVLogByFanMeetingRequest {
  /// Returns a new [GrpcUploadTencentLiteAVLogByFanMeetingRequest] instance.
  GrpcUploadTencentLiteAVLogByFanMeetingRequest({
    this.influencerUuid,
    this.fileName,
    this.logFileByte,
  });

  String influencerUuid;

  String fileName;

  String logFileByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadTencentLiteAVLogByFanMeetingRequest &&
     other.influencerUuid == influencerUuid &&
     other.fileName == fileName &&
     other.logFileByte == logFileByte;

  @override
  int get hashCode =>
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (logFileByte == null ? 0 : logFileByte.hashCode);

  @override
  String toString() => 'GrpcUploadTencentLiteAVLogByFanMeetingRequest[influencerUuid=$influencerUuid, fileName=$fileName, logFileByte=$logFileByte]';

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

  /// Returns a new [GrpcUploadTencentLiteAVLogByFanMeetingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadTencentLiteAVLogByFanMeetingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadTencentLiteAVLogByFanMeetingRequest(
        influencerUuid: json[r'influencer_uuid'],
        fileName: json[r'file_name'],
        logFileByte: json[r'log_file_byte'],
    );

  static List<GrpcUploadTencentLiteAVLogByFanMeetingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadTencentLiteAVLogByFanMeetingRequest>[]
      : json.map((dynamic value) => GrpcUploadTencentLiteAVLogByFanMeetingRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadTencentLiteAVLogByFanMeetingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadTencentLiteAVLogByFanMeetingRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadTencentLiteAVLogByFanMeetingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadTencentLiteAVLogByFanMeetingRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadTencentLiteAVLogByFanMeetingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadTencentLiteAVLogByFanMeetingRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadTencentLiteAVLogByFanMeetingRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

