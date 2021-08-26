//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcReservationAndFan {
  /// Returns a new [GrpcReservationAndFan] instance.
  GrpcReservationAndFan({
    this.reservation,
    this.fan,
  });

  GrpcReservation reservation;

  GrpcFan fan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcReservationAndFan &&
     other.reservation == reservation &&
     other.fan == fan;

  @override
  int get hashCode =>
    (reservation == null ? 0 : reservation.hashCode) +
    (fan == null ? 0 : fan.hashCode);

  @override
  String toString() => 'GrpcReservationAndFan[reservation=$reservation, fan=$fan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (reservation != null) {
      json[r'reservation'] = reservation;
    }
    if (fan != null) {
      json[r'fan'] = fan;
    }
    return json;
  }

  /// Returns a new [GrpcReservationAndFan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcReservationAndFan fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcReservationAndFan(
        reservation: GrpcReservation.fromJson(json[r'reservation']),
        fan: GrpcFan.fromJson(json[r'fan']),
    );

  static List<GrpcReservationAndFan> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcReservationAndFan>[]
      : json.map((dynamic value) => GrpcReservationAndFan.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcReservationAndFan> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcReservationAndFan>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcReservationAndFan.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcReservationAndFan-objects as value to a dart map
  static Map<String, List<GrpcReservationAndFan>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcReservationAndFan>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcReservationAndFan.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

