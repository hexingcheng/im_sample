//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateSerialCodeResponse {
  /// Returns a new [GrpcCreateSerialCodeResponse] instance.
  GrpcCreateSerialCodeResponse({
    this.serialCodes = const [],
  });

  List<String> serialCodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateSerialCodeResponse &&
     other.serialCodes == serialCodes;

  @override
  int get hashCode =>
    (serialCodes == null ? 0 : serialCodes.hashCode);

  @override
  String toString() => 'GrpcCreateSerialCodeResponse[serialCodes=$serialCodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serialCodes != null) {
      json[r'serial_codes'] = serialCodes;
    }
    return json;
  }

  /// Returns a new [GrpcCreateSerialCodeResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateSerialCodeResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateSerialCodeResponse(
        serialCodes: json[r'serial_codes'] == null
          ? null
          : (json[r'serial_codes'] as List).cast<String>(),
    );

  static List<GrpcCreateSerialCodeResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateSerialCodeResponse>[]
      : json.map((dynamic value) => GrpcCreateSerialCodeResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateSerialCodeResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateSerialCodeResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateSerialCodeResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateSerialCodeResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateSerialCodeResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateSerialCodeResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateSerialCodeResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

