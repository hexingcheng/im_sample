//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcBreakDown {
  /// Returns a new [GrpcBreakDown] instance.
  GrpcBreakDown({
    this.point,
    this.expireDate,
  });

  int point;

  GrpcTimestamp expireDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcBreakDown &&
     other.point == point &&
     other.expireDate == expireDate;

  @override
  int get hashCode =>
    (point == null ? 0 : point.hashCode) +
    (expireDate == null ? 0 : expireDate.hashCode);

  @override
  String toString() => 'GrpcBreakDown[point=$point, expireDate=$expireDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (point != null) {
      json[r'point'] = point;
    }
    if (expireDate != null) {
      json[r'expire_date'] = expireDate;
    }
    return json;
  }

  /// Returns a new [GrpcBreakDown] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcBreakDown fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcBreakDown(
        point: json[r'point'],
        expireDate: GrpcTimestamp.fromJson(json[r'expire_date']),
    );

  static List<GrpcBreakDown> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcBreakDown>[]
      : json.map((dynamic value) => GrpcBreakDown.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcBreakDown> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcBreakDown>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcBreakDown.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcBreakDown-objects as value to a dart map
  static Map<String, List<GrpcBreakDown>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcBreakDown>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcBreakDown.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

