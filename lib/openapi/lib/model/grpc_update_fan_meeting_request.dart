//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateFanMeetingRequest {
  /// Returns a new [GrpcUpdateFanMeetingRequest] instance.
  GrpcUpdateFanMeetingRequest({
    this.id,
    this.itemCode,
    this.isExtension,
    this.limitedPeople,
    this.eventDate,
    this.secondsPerReservation,
    this.state,
    this.influencerUuid,
  });

  int id;

  String itemCode;

  GrpcIsExtension isExtension;

  int limitedPeople;

  GrpcTimestamp eventDate;

  int secondsPerReservation;

  GrpcFanMeetingState state;

  String influencerUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateFanMeetingRequest &&
     other.id == id &&
     other.itemCode == itemCode &&
     other.isExtension == isExtension &&
     other.limitedPeople == limitedPeople &&
     other.eventDate == eventDate &&
     other.secondsPerReservation == secondsPerReservation &&
     other.state == state &&
     other.influencerUuid == influencerUuid;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (itemCode == null ? 0 : itemCode.hashCode) +
    (isExtension == null ? 0 : isExtension.hashCode) +
    (limitedPeople == null ? 0 : limitedPeople.hashCode) +
    (eventDate == null ? 0 : eventDate.hashCode) +
    (secondsPerReservation == null ? 0 : secondsPerReservation.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (influencerUuid == null ? 0 : influencerUuid.hashCode);

  @override
  String toString() => 'GrpcUpdateFanMeetingRequest[id=$id, itemCode=$itemCode, isExtension=$isExtension, limitedPeople=$limitedPeople, eventDate=$eventDate, secondsPerReservation=$secondsPerReservation, state=$state, influencerUuid=$influencerUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (itemCode != null) {
      json[r'item_code'] = itemCode;
    }
    if (isExtension != null) {
      json[r'is_extension'] = isExtension;
    }
    if (limitedPeople != null) {
      json[r'limited_people'] = limitedPeople;
    }
    if (eventDate != null) {
      json[r'event_date'] = eventDate;
    }
    if (secondsPerReservation != null) {
      json[r'seconds_per_reservation'] = secondsPerReservation;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateFanMeetingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateFanMeetingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateFanMeetingRequest(
        id: json[r'id'],
        itemCode: json[r'item_code'],
        isExtension: GrpcIsExtension.fromJson(json[r'is_extension']),
        limitedPeople: json[r'limited_people'],
        eventDate: GrpcTimestamp.fromJson(json[r'event_date']),
        secondsPerReservation: json[r'seconds_per_reservation'],
        state: GrpcFanMeetingState.fromJson(json[r'state']),
        influencerUuid: json[r'influencer_uuid'],
    );

  static List<GrpcUpdateFanMeetingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateFanMeetingRequest>[]
      : json.map((dynamic value) => GrpcUpdateFanMeetingRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateFanMeetingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateFanMeetingRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateFanMeetingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateFanMeetingRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateFanMeetingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateFanMeetingRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateFanMeetingRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

