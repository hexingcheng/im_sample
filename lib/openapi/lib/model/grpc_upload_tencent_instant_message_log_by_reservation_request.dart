//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadTencentInstantMessageLogByReservationRequest {
  /// Returns a new [GrpcUploadTencentInstantMessageLogByReservationRequest] instance.
  GrpcUploadTencentInstantMessageLogByReservationRequest({
    this.fanUuid,
    this.fileName,
    this.logFileByte,
  });

  String fanUuid;

  String fileName;

  String logFileByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadTencentInstantMessageLogByReservationRequest &&
     other.fanUuid == fanUuid &&
     other.fileName == fileName &&
     other.logFileByte == logFileByte;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (logFileByte == null ? 0 : logFileByte.hashCode);

  @override
  String toString() => 'GrpcUploadTencentInstantMessageLogByReservationRequest[fanUuid=$fanUuid, fileName=$fileName, logFileByte=$logFileByte]';

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

  /// Returns a new [GrpcUploadTencentInstantMessageLogByReservationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadTencentInstantMessageLogByReservationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadTencentInstantMessageLogByReservationRequest(
        fanUuid: json[r'fan_uuid'],
        fileName: json[r'file_name'],
        logFileByte: json[r'log_file_byte'],
    );

  static List<GrpcUploadTencentInstantMessageLogByReservationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadTencentInstantMessageLogByReservationRequest>[]
      : json.map((dynamic value) => GrpcUploadTencentInstantMessageLogByReservationRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadTencentInstantMessageLogByReservationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadTencentInstantMessageLogByReservationRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadTencentInstantMessageLogByReservationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadTencentInstantMessageLogByReservationRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadTencentInstantMessageLogByReservationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadTencentInstantMessageLogByReservationRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadTencentInstantMessageLogByReservationRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

