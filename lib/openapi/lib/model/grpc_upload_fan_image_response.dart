//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadFanImageResponse {
  /// Returns a new [GrpcUploadFanImageResponse] instance.
  GrpcUploadFanImageResponse({
    this.imageUri,
  });

  String imageUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadFanImageResponse &&
     other.imageUri == imageUri;

  @override
  int get hashCode =>
    (imageUri == null ? 0 : imageUri.hashCode);

  @override
  String toString() => 'GrpcUploadFanImageResponse[imageUri=$imageUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageUri != null) {
      json[r'image_uri'] = imageUri;
    }
    return json;
  }

  /// Returns a new [GrpcUploadFanImageResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadFanImageResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadFanImageResponse(
        imageUri: json[r'image_uri'],
    );

  static List<GrpcUploadFanImageResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadFanImageResponse>[]
      : json.map((dynamic value) => GrpcUploadFanImageResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadFanImageResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadFanImageResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadFanImageResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadFanImageResponse-objects as value to a dart map
  static Map<String, List<GrpcUploadFanImageResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadFanImageResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadFanImageResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

