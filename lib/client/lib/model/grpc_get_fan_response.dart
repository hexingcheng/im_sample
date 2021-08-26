//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetFanResponse {
  /// Returns a new [GrpcGetFanResponse] instance.
  GrpcGetFanResponse({
    this.fan,
    this.followNum,
  });

  GrpcFan fan;

  int followNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetFanResponse &&
     other.fan == fan &&
     other.followNum == followNum;

  @override
  int get hashCode =>
    (fan == null ? 0 : fan.hashCode) +
    (followNum == null ? 0 : followNum.hashCode);

  @override
  String toString() => 'GrpcGetFanResponse[fan=$fan, followNum=$followNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fan != null) {
      json[r'fan'] = fan;
    }
    if (followNum != null) {
      json[r'follow_num'] = followNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetFanResponse(
        fan: GrpcFan.fromJson(json[r'fan']),
        followNum: json[r'follow_num'],
    );

  static List<GrpcGetFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetFanResponse>[]
      : json.map((dynamic value) => GrpcGetFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetFanResponse-objects as value to a dart map
  static Map<String, List<GrpcGetFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

