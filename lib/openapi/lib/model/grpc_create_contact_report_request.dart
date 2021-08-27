//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateContactReportRequest {
  /// Returns a new [GrpcCreateContactReportRequest] instance.
  GrpcCreateContactReportRequest({
    this.reservationId,
    this.type,
    this.body,
  });

  int reservationId;

  GrpcReportType type;

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateContactReportRequest &&
     other.reservationId == reservationId &&
     other.type == type &&
     other.body == body;

  @override
  int get hashCode =>
    (reservationId == null ? 0 : reservationId.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'GrpcCreateContactReportRequest[reservationId=$reservationId, type=$type, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (reservationId != null) {
      json[r'reservation_id'] = reservationId;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [GrpcCreateContactReportRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateContactReportRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateContactReportRequest(
        reservationId: json[r'reservation_id'],
        type: GrpcReportType.fromJson(json[r'type']),
        body: json[r'body'],
    );

  static List<GrpcCreateContactReportRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateContactReportRequest>[]
      : json.map((dynamic value) => GrpcCreateContactReportRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateContactReportRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateContactReportRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateContactReportRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateContactReportRequest-objects as value to a dart map
  static Map<String, List<GrpcCreateContactReportRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateContactReportRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateContactReportRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

