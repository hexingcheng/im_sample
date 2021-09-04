//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcEmpty {
  /// Returns a new [GrpcEmpty] instance.
  GrpcEmpty({
    this.isEmpty,
  });

  bool isEmpty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcEmpty &&
     other.isEmpty == isEmpty;

  @override
  int get hashCode =>
    (isEmpty == null ? 0 : isEmpty.hashCode);

  @override
  String toString() => 'GrpcEmpty[isEmpty=$isEmpty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (isEmpty != null) {
      json[r'is_empty'] = isEmpty;
    }
    return json;
  }

  /// Returns a new [GrpcEmpty] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcEmpty fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcEmpty(
        isEmpty: json[r'is_empty'],
    );

  static List<GrpcEmpty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcEmpty>[]
      : json.map((dynamic value) => GrpcEmpty.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcEmpty> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcEmpty>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcEmpty.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcEmpty-objects as value to a dart map
  static Map<String, List<GrpcEmpty>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcEmpty>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcEmpty.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

