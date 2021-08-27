//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadFanImageRequest {
  /// Returns a new [GrpcUploadFanImageRequest] instance.
  GrpcUploadFanImageRequest({
    this.imageByte,
  });

  String imageByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadFanImageRequest &&
     other.imageByte == imageByte;

  @override
  int get hashCode =>
    (imageByte == null ? 0 : imageByte.hashCode);

  @override
  String toString() => 'GrpcUploadFanImageRequest[imageByte=$imageByte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageByte != null) {
      json[r'image_byte'] = imageByte;
    }
    return json;
  }

  /// Returns a new [GrpcUploadFanImageRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadFanImageRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadFanImageRequest(
        imageByte: json[r'image_byte'],
    );

  static List<GrpcUploadFanImageRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadFanImageRequest>[]
      : json.map((dynamic value) => GrpcUploadFanImageRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadFanImageRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadFanImageRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadFanImageRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadFanImageRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadFanImageRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadFanImageRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadFanImageRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

