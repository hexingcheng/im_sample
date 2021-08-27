//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcAddPointsRequest {
  /// Returns a new [GrpcAddPointsRequest] instance.
  GrpcAddPointsRequest({
    this.reservationId,
    this.numExtensionTimes,
  });

  int reservationId;

  GrpcAddPointsRequestNumExtension numExtensionTimes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcAddPointsRequest &&
     other.reservationId == reservationId &&
     other.numExtensionTimes == numExtensionTimes;

  @override
  int get hashCode =>
    (reservationId == null ? 0 : reservationId.hashCode) +
    (numExtensionTimes == null ? 0 : numExtensionTimes.hashCode);

  @override
  String toString() => 'GrpcAddPointsRequest[reservationId=$reservationId, numExtensionTimes=$numExtensionTimes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    if (numExtensionTimes != null) {
      json[r'num_extension_times'] = numExtensionTimes;
    }
    return json;
  }

  /// Returns a new [GrpcAddPointsRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcAddPointsRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcAddPointsRequest(
        reservationId: json[r'reservation_id'],
        numExtensionTimes: GrpcAddPointsRequestNumExtension.fromJson(json[r'num_extension_times']),
    );

  static List<GrpcAddPointsRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcAddPointsRequest>[]
      : json.map((dynamic value) => GrpcAddPointsRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcAddPointsRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcAddPointsRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcAddPointsRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcAddPointsRequest-objects as value to a dart map
  static Map<String, List<GrpcAddPointsRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcAddPointsRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcAddPointsRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

