//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateImageURIFanResponse {
  /// Returns a new [GrpcUpdateImageURIFanResponse] instance.
  GrpcUpdateImageURIFanResponse({
    this.imageUri,
  });

  String imageUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateImageURIFanResponse &&
     other.imageUri == imageUri;

  @override
  int get hashCode =>
    (imageUri == null ? 0 : imageUri.hashCode);

  @override
  String toString() => 'GrpcUpdateImageURIFanResponse[imageUri=$imageUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageUri != null) {
      json[r'image_uri'] = imageUri;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateImageURIFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateImageURIFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateImageURIFanResponse(
        imageUri: json[r'image_uri'],
    );

  static List<GrpcUpdateImageURIFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateImageURIFanResponse>[]
      : json.map((dynamic value) => GrpcUpdateImageURIFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateImageURIFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateImageURIFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateImageURIFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateImageURIFanResponse-objects as value to a dart map
  static Map<String, List<GrpcUpdateImageURIFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateImageURIFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateImageURIFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

