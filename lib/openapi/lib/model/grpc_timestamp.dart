//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcTimestamp {
  /// Returns a new [GrpcTimestamp] instance.
  GrpcTimestamp({
    this.seconds,
    this.nanos,
  });

  int seconds;

  int nanos;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcTimestamp &&
     other.seconds == seconds &&
     other.nanos == nanos;

  @override
  int get hashCode =>
    (seconds == null ? 0 : seconds.hashCode) +
    (nanos == null ? 0 : nanos.hashCode);

  @override
  String toString() => 'GrpcTimestamp[seconds=$seconds, nanos=$nanos]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (seconds != null) {
      json[r'seconds'] = seconds;
    }
    if (nanos != null) {
      json[r'nanos'] = nanos;
    }
    return json;
  }

  /// Returns a new [GrpcTimestamp] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcTimestamp fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcTimestamp(
        seconds: json[r'seconds'],
        nanos: json[r'nanos'],
    );

  static List<GrpcTimestamp> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcTimestamp>[]
      : json.map((dynamic value) => GrpcTimestamp.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcTimestamp> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcTimestamp>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcTimestamp.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcTimestamp-objects as value to a dart map
  static Map<String, List<GrpcTimestamp>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcTimestamp>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcTimestamp.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

