//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateCampaignResponse {
  /// Returns a new [GrpcCreateCampaignResponse] instance.
  GrpcCreateCampaignResponse({
    this.uuid,
  });

  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateCampaignResponse &&
     other.uuid == uuid;

  @override
  int get hashCode =>
    (uuid == null ? 0 : uuid.hashCode);

  @override
  String toString() => 'GrpcCreateCampaignResponse[uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    return json;
  }

  /// Returns a new [GrpcCreateCampaignResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateCampaignResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateCampaignResponse(
        uuid: json[r'uuid'],
    );

  static List<GrpcCreateCampaignResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateCampaignResponse>[]
      : json.map((dynamic value) => GrpcCreateCampaignResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateCampaignResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateCampaignResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateCampaignResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateCampaignResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateCampaignResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateCampaignResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateCampaignResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

