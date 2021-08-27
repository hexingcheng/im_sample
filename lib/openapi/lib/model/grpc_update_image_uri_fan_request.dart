//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateImageURIFanRequest {
  /// Returns a new [GrpcUpdateImageURIFanRequest] instance.
  GrpcUpdateImageURIFanRequest({
    this.imageUri,
    this.uuid,
  });

  String imageUri;

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateImageURIFanRequest &&
     other.imageUri == imageUri &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (imageUri == null ? 0 : imageUri.hashCode) +
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcUpdateImageURIFanRequest[imageUri=$imageUri, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageUri != null) {
      json[r'image_uri'] = imageUri;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateImageURIFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateImageURIFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateImageURIFanRequest(
        imageUri: json[r'image_uri'],
        uuid: json[r'uuid'],
    );

  static List<GrpcUpdateImageURIFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateImageURIFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateImageURIFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateImageURIFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateImageURIFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateImageURIFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateImageURIFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateImageURIFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateImageURIFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateImageURIFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

