//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcUpdateIntroductionFanResponse {
  /// Returns a new [GrpcUpdateIntroductionFanResponse] instance.
  GrpcUpdateIntroductionFanResponse({
    this.introduction,
  });

  String introduction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcUpdateIntroductionFanResponse &&
     other.introduction == introduction;

  @override
  int get hashCode =>
    (introduction == null ? 0 : introduction.hashCode);

  @override
  String toString() => 'GrpcUpdateIntroductionFanResponse[introduction=$introduction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (introduction != null) {
      json[r'introduction'] = introduction;
    }
    return json;
  }

  /// Returns a new [GrpcUpdateIntroductionFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcUpdateIntroductionFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcUpdateIntroductionFanResponse(
        introduction: json[r'introduction'],
    );

  static List<GrpcUpdateIntroductionFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUpdateIntroductionFanResponse>[]
      : json.map((dynamic value) => GrpcUpdateIntroductionFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcUpdateIntroductionFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcUpdateIntroductionFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcUpdateIntroductionFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcUpdateIntroductionFanResponse-objects as value to a dart map
  static Map<String, List<GrpcUpdateIntroductionFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcUpdateIntroductionFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcUpdateIntroductionFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

