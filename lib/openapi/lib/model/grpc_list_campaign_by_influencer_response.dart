//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListCampaignByInfluencerResponse {
  /// Returns a new [GrpcListCampaignByInfluencerResponse] instance.
  GrpcListCampaignByInfluencerResponse({
    this.campaigns = const [],
  });

  List<GrpcCampaign> campaigns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListCampaignByInfluencerResponse &&
     other.campaigns == campaigns;

  @override
  int get hashCode =>
    (campaigns == null ? 0 : campaigns.hashCode);

  @override
  String toString() => 'GrpcListCampaignByInfluencerResponse[campaigns=$campaigns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (campaigns != null) {
      json[r'campaigns'] = campaigns;
    }
    return json;
  }

  /// Returns a new [GrpcListCampaignByInfluencerResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListCampaignByInfluencerResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListCampaignByInfluencerResponse(
        campaigns: GrpcCampaign.listFromJson(json[r'campaigns']),
    );

  static List<GrpcListCampaignByInfluencerResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListCampaignByInfluencerResponse>[]
      : json.map((dynamic value) => GrpcListCampaignByInfluencerResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListCampaignByInfluencerResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListCampaignByInfluencerResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListCampaignByInfluencerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListCampaignByInfluencerResponse-objects as value to a dart map
  static Map<String, List<GrpcListCampaignByInfluencerResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListCampaignByInfluencerResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListCampaignByInfluencerResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

