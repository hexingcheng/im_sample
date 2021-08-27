//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateInfluencerRequest {
  /// Returns a new [GrpcUpdateInfluencerRequest] instance.
  GrpcUpdateInfluencerRequest({
    this.influencer,
  });

  GrpcInfluencer influencer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateInfluencerRequest &&
     other.influencer == influencer;

  @override
  int get hashCode =>
    (influencer == null ? 0 : influencer.hashCode);

  @override
  String toString() => 'GrpcUpdateInfluencerRequest[influencer=$influencer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencer != null) {
      json[r'influencer'] = influencer;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateInfluencerRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateInfluencerRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateInfluencerRequest(
        influencer: GrpcInfluencer.fromJson(json[r'influencer']),
    );

  static List<GrpcUpdateInfluencerRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateInfluencerRequest>[]
      : json.map((dynamic value) => GrpcUpdateInfluencerRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateInfluencerRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateInfluencerRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateInfluencerRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateInfluencerRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateInfluencerRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateInfluencerRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateInfluencerRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

