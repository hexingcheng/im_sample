//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateIncentiveResponse {
  /// Returns a new [GrpcCreateIncentiveResponse] instance.
  GrpcCreateIncentiveResponse({
    this.incentiveCode,
    this.incentiveName,
    this.incentivePoint,
    this.startAt,
    this.endAt,
    this.pointExpireDays,
  });

  String incentiveCode;

  String incentiveName;

  int incentivePoint;

  int startAt;

  int endAt;

  int pointExpireDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateIncentiveResponse &&
     other.incentiveCode == incentiveCode &&
     other.incentiveName == incentiveName &&
     other.incentivePoint == incentivePoint &&
     other.startAt == startAt &&
     other.endAt == endAt &&
     other.pointExpireDays == pointExpireDays;

  @override
  int get hashCode =>
    (incentiveCode == null ? 0 : incentiveCode.hashCode) +
    (incentiveName == null ? 0 : incentiveName.hashCode) +
    (incentivePoint == null ? 0 : incentivePoint.hashCode) +
    (startAt == null ? 0 : startAt.hashCode) +
    (endAt == null ? 0 : endAt.hashCode) +
    (pointExpireDays == null ? 0 : pointExpireDays.hashCode);

  @override
  String toString() => 'GrpcCreateIncentiveResponse[incentiveCode=$incentiveCode, incentiveName=$incentiveName, incentivePoint=$incentivePoint, startAt=$startAt, endAt=$endAt, pointExpireDays=$pointExpireDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (incentiveCode != null) {
      json[r'incentive_code'] = incentiveCode;
    }
    if (incentiveName != null) {
      json[r'incentive_name'] = incentiveName;
    }
    if (incentivePoint != null) {
      json[r'incentive_point'] = incentivePoint;
    }
    if (startAt != null) {
      json[r'start_at'] = startAt;
    }
    if (endAt != null) {
      json[r'end_at'] = endAt;
    }
    if (pointExpireDays != null) {
      json[r'point_expire_days'] = pointExpireDays;
    }
    return json;
  }

  /// Returns a new [GrpcCreateIncentiveResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateIncentiveResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateIncentiveResponse(
        incentiveCode: json[r'incentive_code'],
        incentiveName: json[r'incentive_name'],
        incentivePoint: json[r'incentive_point'],
        startAt: json[r'start_at'],
        endAt: json[r'end_at'],
        pointExpireDays: json[r'point_expire_days'],
    );

  static List<GrpcCreateIncentiveResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateIncentiveResponse>[]
      : json.map((dynamic value) => GrpcCreateIncentiveResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateIncentiveResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateIncentiveResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateIncentiveResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateIncentiveResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateIncentiveResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateIncentiveResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateIncentiveResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

