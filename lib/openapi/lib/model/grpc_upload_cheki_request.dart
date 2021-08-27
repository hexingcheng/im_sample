//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadChekiRequest {
  /// Returns a new [GrpcUploadChekiRequest] instance.
  GrpcUploadChekiRequest({
    this.id,
    this.imageByte,
  });

  int id;

  String imageByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadChekiRequest &&
     other.id == id &&
     other.imageByte == imageByte;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (imageByte == null ? 0 : imageByte.hashCode);

  @override
  String toString() => 'GrpcUploadChekiRequest[id=$id, imageByte=$imageByte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (imageByte != null) {
      json[r'image_byte'] = imageByte;
    }
    return json;
  }

  /// Returns a new [GrpcUploadChekiRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadChekiRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadChekiRequest(
        id: json[r'id'],
        imageByte: json[r'image_byte'],
    );

  static List<GrpcUploadChekiRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadChekiRequest>[]
      : json.map((dynamic value) => GrpcUploadChekiRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadChekiRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadChekiRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadChekiRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadChekiRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadChekiRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadChekiRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadChekiRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

