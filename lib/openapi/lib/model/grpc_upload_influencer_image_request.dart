//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUploadInfluencerImageRequest {
  /// Returns a new [GrpcUploadInfluencerImageRequest] instance.
  GrpcUploadInfluencerImageRequest({
    this.influencerUuid,
    this.imageByte,
  });

  String influencerUuid;

  String imageByte;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUploadInfluencerImageRequest &&
     other.influencerUuid == influencerUuid &&
     other.imageByte == imageByte;

  @override
  int get hashCode =>
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (imageByte == null ? 0 : imageByte.hashCode);

  @override
  String toString() => 'GrpcUploadInfluencerImageRequest[influencerUuid=$influencerUuid, imageByte=$imageByte]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (imageByte != null) {
      json[r'image_byte'] = imageByte;
    }
    return json;
  }

  /// Returns a new [GrpcUploadInfluencerImageRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUploadInfluencerImageRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUploadInfluencerImageRequest(
        influencerUuid: json[r'influencer_uuid'],
        imageByte: json[r'image_byte'],
    );

  static List<GrpcUploadInfluencerImageRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUploadInfluencerImageRequest>[]
      : json.map((dynamic value) => GrpcUploadInfluencerImageRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUploadInfluencerImageRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUploadInfluencerImageRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUploadInfluencerImageRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUploadInfluencerImageRequest-objects as value to a dart map
  static Map<String, List<GrpcUploadInfluencerImageRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUploadInfluencerImageRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUploadInfluencerImageRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

