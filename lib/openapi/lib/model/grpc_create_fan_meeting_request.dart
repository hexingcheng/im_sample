//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateFanMeetingRequest {
  /// Returns a new [GrpcCreateFanMeetingRequest] instance.
  GrpcCreateFanMeetingRequest({
    this.influencerUuid,
    this.itemCode,
    this.isExtension,
    this.limitedPeople,
    this.eventDate,
    this.secondsPerReservation,
    this.state,
    this.style,
  });

  String influencerUuid;

  String itemCode;

  GrpcIsExtension isExtension;

  int limitedPeople;

  GrpcTimestamp eventDate;

  int secondsPerReservation;

  GrpcFanMeetingState state;

  GrpcFanmeetingStyle style;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateFanMeetingRequest &&
     other.influencerUuid == influencerUuid &&
     other.itemCode == itemCode &&
     other.isExtension == isExtension &&
     other.limitedPeople == limitedPeople &&
     other.eventDate == eventDate &&
     other.secondsPerReservation == secondsPerReservation &&
     other.state == state &&
     other.style == style;

  @override
  int get hashCode =>
    (influencerUuid == null ? 0 : influencerUuid.hashCode) +
    (itemCode == null ? 0 : itemCode.hashCode) +
    (isExtension == null ? 0 : isExtension.hashCode) +
    (limitedPeople == null ? 0 : limitedPeople.hashCode) +
    (eventDate == null ? 0 : eventDate.hashCode) +
    (secondsPerReservation == null ? 0 : secondsPerReservation.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (style == null ? 0 : style.hashCode);

  @override
  String toString() => 'GrpcCreateFanMeetingRequest[influencerUuid=$influencerUuid, itemCode=$itemCode, isExtension=$isExtension, limitedPeople=$limitedPeople, eventDate=$eventDate, secondsPerReservation=$secondsPerReservation, state=$state, style=$style]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencerUuid != null) {
      json[r'influencer_uuid'] = influencerUuid;
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
    if (style != null) {
      json[r'style'] = style;
    }
    return json;
  }

  /// Returns a new [GrpcCreateFanMeetingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateFanMeetingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateFanMeetingRequest(
        influencerUuid: json[r'influencer_uuid'],
        itemCode: json[r'item_code'],
        isExtension: GrpcIsExtension.fromJson(json[r'is_extension']),
        limitedPeople: json[r'limited_people'],
        eventDate: GrpcTimestamp.fromJson(json[r'event_date']),
        secondsPerReservation: json[r'seconds_per_reservation'],
        state: GrpcFanMeetingState.fromJson(json[r'state']),
        style: GrpcFanmeetingStyle.fromJson(json[r'style']),
    );

  static List<GrpcCreateFanMeetingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateFanMeetingRequest>[]
      : json.map((dynamic value) => GrpcCreateFanMeetingRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateFanMeetingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateFanMeetingRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateFanMeetingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateFanMeetingRequest-objects as value to a dart map
  static Map<String, List<GrpcCreateFanMeetingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateFanMeetingRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateFanMeetingRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

