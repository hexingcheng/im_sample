//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateMessageByInfluencerResponse {
  /// Returns a new [GrpcCreateMessageByInfluencerResponse] instance.
  GrpcCreateMessageByInfluencerResponse({
    this.id,
  });

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateMessageByInfluencerResponse &&
     other.id == id;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'GrpcCreateMessageByInfluencerResponse[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [GrpcCreateMessageByInfluencerResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateMessageByInfluencerResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateMessageByInfluencerResponse(
        id: json[r'id'],
    );

  static List<GrpcCreateMessageByInfluencerResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateMessageByInfluencerResponse>[]
      : json.map((dynamic value) => GrpcCreateMessageByInfluencerResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateMessageByInfluencerResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateMessageByInfluencerResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateMessageByInfluencerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateMessageByInfluencerResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateMessageByInfluencerResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateMessageByInfluencerResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateMessageByInfluencerResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

