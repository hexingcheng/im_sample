//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListCampaignByFanResponse {
  /// Returns a new [GrpcListCampaignByFanResponse] instance.
  GrpcListCampaignByFanResponse({
    this.campaigns = const [],
  });

  List<GrpcListCampaignByFanResponseMessage> campaigns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListCampaignByFanResponse &&
     other.campaigns == campaigns;

  @override
  int get hashCode =>
    (campaigns == null ? 0 : campaigns.hashCode);

  @override
  String toString() => 'GrpcListCampaignByFanResponse[campaigns=$campaigns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (campaigns != null) {
      json[r'campaigns'] = campaigns;
    }
    return json;
  }

  /// Returns a new [GrpcListCampaignByFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListCampaignByFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListCampaignByFanResponse(
        campaigns: GrpcListCampaignByFanResponseMessage.listFromJson(json[r'campaigns']),
    );

  static List<GrpcListCampaignByFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListCampaignByFanResponse>[]
      : json.map((dynamic value) => GrpcListCampaignByFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListCampaignByFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListCampaignByFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListCampaignByFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListCampaignByFanResponse-objects as value to a dart map
  static Map<String, List<GrpcListCampaignByFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListCampaignByFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListCampaignByFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

