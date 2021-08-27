//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcConsumeSerialCodeRequest {
  /// Returns a new [GrpcConsumeSerialCodeRequest] instance.
  GrpcConsumeSerialCodeRequest({
    this.serialCode,
    this.fanUuid,
  });

  String serialCode;

  String fanUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcConsumeSerialCodeRequest &&
     other.serialCode == serialCode &&
     other.fanUuid == fanUuid;

  @override
  int get hashCode =>
    (serialCode == null ? 0 : serialCode.hashCode) +
    (fanUuid == null ? 0 : fanUuid.hashCode);

  @override
  String toString() => 'GrpcConsumeSerialCodeRequest[serialCode=$serialCode, fanUuid=$fanUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serialCode != null) {
      json[r'serial_code'] = serialCode;
    }
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    return json;
  }

  /// Returns a new [GrpcConsumeSerialCodeRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcConsumeSerialCodeRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcConsumeSerialCodeRequest(
        serialCode: json[r'serial_code'],
        fanUuid: json[r'fan_uuid'],
    );

  static List<GrpcConsumeSerialCodeRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcConsumeSerialCodeRequest>[]
      : json.map((dynamic value) => GrpcConsumeSerialCodeRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcConsumeSerialCodeRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcConsumeSerialCodeRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcConsumeSerialCodeRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcConsumeSerialCodeRequest-objects as value to a dart map
  static Map<String, List<GrpcConsumeSerialCodeRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcConsumeSerialCodeRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcConsumeSerialCodeRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

