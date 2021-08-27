//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadTencentLiteAVLogByReservationRequest {
  /// Returns a new [GrpcUploadTencentLiteAVLogByReservationRequest] instance.
  GrpcUploadTencentLiteAVLogByReservationRequest({
    this.fanUuid,
    this.fileName,
    this.logFileByte,
  });

  String fanUuid;

  String fileName;

  String logFileByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadTencentLiteAVLogByReservationRequest &&
     other.fanUuid == fanUuid &&
     other.fileName == fileName &&
     other.logFileByte == logFileByte;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (logFileByte == null ? 0 : logFileByte.hashCode);

  @override
  String toString() => 'GrpcUploadTencentLiteAVLogByReservationRequest[fanUuid=$fanUuid, fileName=$fileName, logFileByte=$logFileByte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (fileName != null) {
      json[r'file_name'] = fileName;
    }
    if (logFileByte != null) {
      json[r'log_file_byte'] = logFileByte;
    }
    return json;
  }

  /// Returns a new [GrpcUploadTencentLiteAVLogByReservationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadTencentLiteAVLogByReservationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadTencentLiteAVLogByReservationRequest(
        fanUuid: json[r'fan_uuid'],
        fileName: json[r'file_name'],
        logFileByte: json[r'log_file_byte'],
    );

  static List<GrpcUploadTencentLiteAVLogByReservationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadTencentLiteAVLogByReservationRequest>[]
      : json.map((dynamic value) => GrpcUploadTencentLiteAVLogByReservationRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadTencentLiteAVLogByReservationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadTencentLiteAVLogByReservationRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadTencentLiteAVLogByReservationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadTencentLiteAVLogByReservationRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadTencentLiteAVLogByReservationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadTencentLiteAVLogByReservationRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadTencentLiteAVLogByReservationRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

