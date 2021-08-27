//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFanMeeting {
  /// Returns a new [GrpcFanMeeting] instance.
  GrpcFanMeeting({
    this.id,
    this.influencer,
    this.limitedPeople,
    this.state,
    this.isExtension,
    this.eventDate,
    this.itemCode,
    this.secondsPerReservation,
    this.thumbnailMovieUri,
    this.flvUri,
    this.style,
  });

  int id;

  GrpcInfluencer influencer;

  int limitedPeople;

  GrpcFanMeetingState state;

  GrpcIsExtension isExtension;

  GrpcTimestamp eventDate;

  String itemCode;

  int secondsPerReservation;

  String thumbnailMovieUri;

  String flvUri;

  GrpcFanmeetingStyle style;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFanMeeting &&
     other.id == id &&
     other.influencer == influencer &&
     other.limitedPeople == limitedPeople &&
     other.state == state &&
     other.isExtension == isExtension &&
     other.eventDate == eventDate &&
     other.itemCode == itemCode &&
     other.secondsPerReservation == secondsPerReservation &&
     other.thumbnailMovieUri == thumbnailMovieUri &&
     other.flvUri == flvUri &&
     other.style == style;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (influencer == null ? 0 : influencer.hashCode) +
    (limitedPeople == null ? 0 : limitedPeople.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (isExtension == null ? 0 : isExtension.hashCode) +
    (eventDate == null ? 0 : eventDate.hashCode) +
    (itemCode == null ? 0 : itemCode.hashCode) +
    (secondsPerReservation == null ? 0 : secondsPerReservation.hashCode) +
    (thumbnailMovieUri == null ? 0 : thumbnailMovieUri.hashCode) +
    (flvUri == null ? 0 : flvUri.hashCode) +
    (style == null ? 0 : style.hashCode);

  @override
  String toString() => 'GrpcFanMeeting[id=$id, influencer=$influencer, limitedPeople=$limitedPeople, state=$state, isExtension=$isExtension, eventDate=$eventDate, itemCode=$itemCode, secondsPerReservation=$secondsPerReservation, thumbnailMovieUri=$thumbnailMovieUri, flvUri=$flvUri, style=$style]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (influencer != null) {
      json[r'influencer'] = influencer;
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
    if (eventDate != null) {
      json[r'event_date'] = eventDate;
    }
    if (itemCode != null) {
      json[r'item_code'] = itemCode;
    }
    if (secondsPerReservation != null) {
      json[r'seconds_per_reservation'] = secondsPerReservation;
    }
    if (thumbnailMovieUri != null) {
      json[r'thumbnail_movie_uri'] = thumbnailMovieUri;
    }
    if (flvUri != null) {
      json[r'flv_uri'] = flvUri;
    }
    if (style != null) {
      json[r'style'] = style;
    }
    return json;
  }

  /// Returns a new [GrpcFanMeeting] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFanMeeting fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFanMeeting(
        id: json[r'id'],
        influencer: GrpcInfluencer.fromJson(json[r'influencer']),
        limitedPeople: json[r'limited_people'],
        state: GrpcFanMeetingState.fromJson(json[r'state']),
        isExtension: GrpcIsExtension.fromJson(json[r'is_extension']),
        eventDate: GrpcTimestamp.fromJson(json[r'event_date']),
        itemCode: json[r'item_code'],
        secondsPerReservation: json[r'seconds_per_reservation'],
        thumbnailMovieUri: json[r'thumbnail_movie_uri'],
        flvUri: json[r'flv_uri'],
        style: GrpcFanmeetingStyle.fromJson(json[r'style']),
    );

  static List<GrpcFanMeeting> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanMeeting>[]
      : json.map((dynamic value) => GrpcFanMeeting.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFanMeeting> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFanMeeting>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFanMeeting.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFanMeeting-objects as value to a dart map
  static Map<String, List<GrpcFanMeeting>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFanMeeting>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFanMeeting.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

