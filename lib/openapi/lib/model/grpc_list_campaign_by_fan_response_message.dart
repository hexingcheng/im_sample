//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListCampaignByFanResponseMessage {
  /// Returns a new [GrpcListCampaignByFanResponseMessage] instance.
  GrpcListCampaignByFanResponseMessage({
    this.campaign,
    this.displayName,
  });

  GrpcCampaign campaign;

  String displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListCampaignByFanResponseMessage &&
     other.campaign == campaign &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    (campaign == null ? 0 : campaign.hashCode) +
    (displayName == null ? 0 : displayName.hashCode);

  @override
  String toString() => 'GrpcListCampaignByFanResponseMessage[campaign=$campaign, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (campaign != null) {
      json[r'campaign'] = campaign;
    }
    if (displayName != null) {
      json[r'display_name'] = displayName;
    }
    return json;
  }

  /// Returns a new [GrpcListCampaignByFanResponseMessage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListCampaignByFanResponseMessage fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListCampaignByFanResponseMessage(
        campaign: GrpcCampaign.fromJson(json[r'campaign']),
        displayName: json[r'display_name'],
    );

  static List<GrpcListCampaignByFanResponseMessage> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListCampaignByFanResponseMessage>[]
      : json.map((dynamic value) => GrpcListCampaignByFanResponseMessage.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListCampaignByFanResponseMessage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListCampaignByFanResponseMessage>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListCampaignByFanResponseMessage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListCampaignByFanResponseMessage-objects as value to a dart map
  static Map<String, List<GrpcListCampaignByFanResponseMessage>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListCampaignByFanResponseMessage>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListCampaignByFanResponseMessage.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

