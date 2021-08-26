//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCreateReservationResponse {
  /// Returns a new [GrpcCreateReservationResponse] instance.
  GrpcCreateReservationResponse({
    this.id,
  });

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCreateReservationResponse &&
     other.id == id;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'GrpcCreateReservationResponse[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [GrpcCreateReservationResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCreateReservationResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCreateReservationResponse(
        id: json[r'id'],
    );

  static List<GrpcCreateReservationResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCreateReservationResponse>[]
      : json.map((dynamic value) => GrpcCreateReservationResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCreateReservationResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCreateReservationResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCreateReservationResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCreateReservationResponse-objects as value to a dart map
  static Map<String, List<GrpcCreateReservationResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCreateReservationResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCreateReservationResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

