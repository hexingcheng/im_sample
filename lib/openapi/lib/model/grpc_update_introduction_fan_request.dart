//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateIntroductionFanRequest {
  /// Returns a new [GrpcUpdateIntroductionFanRequest] instance.
  GrpcUpdateIntroductionFanRequest({
    this.introduction,
    this.uuid,
    this.option,
  });

  String introduction;

  String uuid;

  GrpcOption option;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateIntroductionFanRequest &&
     other.introduction == introduction &&
     other.uuid == uuid &&
     other.option == option;

  @override
  int get hashCode =>
    (introduction == null ? 0 : introduction.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (option == null ? 0 : option.hashCode);

  @override
  String toString() => 'GrpcUpdateIntroductionFanRequest[introduction=$introduction, uuid=$uuid, option=$option]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (introduction != null) {
      json[r'introduction'] = introduction;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (option != null) {
      json[r'option'] = option;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateIntroductionFanRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateIntroductionFanRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateIntroductionFanRequest(
        introduction: json[r'introduction'],
        uuid: json[r'uuid'],
        option: GrpcOption.fromJson(json[r'option']),
    );

  static List<GrpcUpdateIntroductionFanRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateIntroductionFanRequest>[]
      : json.map((dynamic value) => GrpcUpdateIntroductionFanRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateIntroductionFanRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateIntroductionFanRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateIntroductionFanRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateIntroductionFanRequest-objects as value to a dart map
  static Map<String, List<GrpcUpdateIntroductionFanRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateIntroductionFanRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateIntroductionFanRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

