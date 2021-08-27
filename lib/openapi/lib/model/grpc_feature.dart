//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFeature {
  /// Returns a new [GrpcFeature] instance.
  GrpcFeature({
    this.id,
    this.title,
    this.imageUri,
    this.webviewUri,
    this.createdAt,
    this.updatedAt,
  });

  int id;

  String title;

  String imageUri;

  String webviewUri;

  GrpcTimestamp createdAt;

  GrpcTimestamp updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFeature &&
     other.id == id &&
     other.title == title &&
     other.imageUri == imageUri &&
     other.webviewUri == webviewUri &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (imageUri == null ? 0 : imageUri.hashCode) +
    (webviewUri == null ? 0 : webviewUri.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'GrpcFeature[id=$id, title=$title, imageUri=$imageUri, webviewUri=$webviewUri, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (imageUri != null) {
      json[r'image_uri'] = imageUri;
    }
    if (webviewUri != null) {
      json[r'webview_uri'] = webviewUri;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    return json;
  }

  /// Returns a new [GrpcFeature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFeature fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFeature(
        id: json[r'id'],
        title: json[r'title'],
        imageUri: json[r'image_uri'],
        webviewUri: json[r'webview_uri'],
        createdAt: GrpcTimestamp.fromJson(json[r'created_at']),
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
    );

  static List<GrpcFeature> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFeature>[]
      : json.map((dynamic value) => GrpcFeature.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFeature> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFeature>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFeature.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFeature-objects as value to a dart map
  static Map<String, List<GrpcFeature>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFeature>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFeature.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

