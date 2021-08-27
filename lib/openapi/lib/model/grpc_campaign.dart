//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCampaign {
  /// Returns a new [GrpcCampaign] instance.
  GrpcCampaign({
    this.uuid,
    this.influencerUuid,
    this.limitedPeople,
    this.state,
    this.isExtension,
    this.startTime,
    this.finishTime,
    this.itemCode,
    this.secondsPerReservation,
    this.title,
  });

  String uuid;

  String influencerUuid;

  int limitedPeople;

  CampaignCampaignCodeState state;

  GrpcIsExtension isExtension;

  GrpcTimestamp startTime;

  GrpcTimestamp finishTime;

  String itemCode;

  int secondsPerReservation;

  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCampaign &&
     other.uuid == uuid &&
     other.influencerUuid == influencerUuid &&
     other.limitedPeople == limitedPeople &&
     other.state == state &&
     other.isExtension == isExtension &&
     other.startTime == startTime &&
     other.finishTime == finishTime &&
     other.itemCode == itemCode &&
     other.secondsPerReservation == secondsPerReservation &&
     other.title == title;

  @override
  int get hashCode =>
    (uuid == null ? 0 : uuid.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (limitedPeople == null ? 0 : limitedPeople.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (isExtension == null ? 0 : isExtension.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (finishTime == null ? 0 : finishTime.hashCode) +
    (itemCode == null ? 0 : itemCode.hashCode) +
    (secondsPerReservation == null ? 0 : secondsPerReservation.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'GrpcCampaign[uuid=$uuid, influencerUuid=$influencerUuid, limitedPeople=$limitedPeople, state=$state, isExtension=$isExtension, startTime=$startTime, finishTime=$finishTime, itemCode=$itemCode, secondsPerReservation=$secondsPerReservation, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    if (limitedPeople != null) {
      json[r'limited_people'] = limitedPeople;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (isExtension != null) {
      json[r'is_extension'] = isExtension;
    }
    if (startTime != null) {
      json[r'start_time'] = startTime;
    }
    if (finishTime != null) {
      json[r'finish_time'] = finishTime;
    }
    if (itemCode != null) {
      json[r'item_code'] = itemCode;
    }
    if (secondsPerReservation != null) {
      json[r'seconds_per_reservation'] = secondsPerReservation;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  /// Returns a new [GrpcCampaign] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCampaign fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCampaign(
        uuid: json[r'uuid'],
        influencerUuid: json[r'influencer_uuid'],
        limitedPeople: json[r'limited_people'],
        state: CampaignCampaignCodeState.fromJson(json[r'state']),
        isExtension: GrpcIsExtension.fromJson(json[r'is_extension']),
        startTime: GrpcTimestamp.fromJson(json[r'start_time']),
        finishTime: GrpcTimestamp.fromJson(json[r'finish_time']),
        itemCode: json[r'item_code'],
        secondsPerReservation: json[r'seconds_per_reservation'],
        title: json[r'title'],
    );

  static List<GrpcCampaign> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCampaign>[]
      : json.map((dynamic value) => GrpcCampaign.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCampaign> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCampaign>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCampaign.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCampaign-objects as value to a dart map
  static Map<String, List<GrpcCampaign>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCampaign>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCampaign.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

