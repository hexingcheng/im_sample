//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcListMessageByFanUUIDResponse {
  /// Returns a new [GrpcListMessageByFanUUIDResponse] instance.
  GrpcListMessageByFanUUIDResponse({
    this.messages = const [],
    this.nextSeekDate,
  });

  List<GrpcMessage> messages;

  int nextSeekDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcListMessageByFanUUIDResponse &&
     other.messages == messages &&
     other.nextSeekDate == nextSeekDate;

  @override
  int get hashCode =>
    (messages == null ? 0 : messages.hashCode) +
    (nextSeekDate == null ? 0 : nextSeekDate.hashCode);

  @override
  String toString() => 'GrpcListMessageByFanUUIDResponse[messages=$messages, nextSeekDate=$nextSeekDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (messages != null) {
      json[r'messages'] = messages;
    }
    if (nextSeekDate != null) {
      json[r'next_seek_date'] = nextSeekDate;
    }
    return json;
  }

  /// Returns a new [GrpcListMessageByFanUUIDResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcListMessageByFanUUIDResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcListMessageByFanUUIDResponse(
        messages: GrpcMessage.listFromJson(json[r'messages']),
        nextSeekDate: json[r'next_seek_date'],
    );

  static List<GrpcListMessageByFanUUIDResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcListMessageByFanUUIDResponse>[]
      : json.map((dynamic value) => GrpcListMessageByFanUUIDResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcListMessageByFanUUIDResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcListMessageByFanUUIDResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcListMessageByFanUUIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcListMessageByFanUUIDResponse-objects as value to a dart map
  static Map<String, List<GrpcListMessageByFanUUIDResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcListMessageByFanUUIDResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcListMessageByFanUUIDResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

