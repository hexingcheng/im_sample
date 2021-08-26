//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcCountNumReservedFanResponse {
  /// Returns a new [GrpcCountNumReservedFanResponse] instance.
  GrpcCountNumReservedFanResponse({
    this.isReserved,
    this.numReservedFan,
  });

  bool isReserved;

  int numReservedFan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcCountNumReservedFanResponse &&
     other.isReserved == isReserved &&
     other.numReservedFan == numReservedFan;

  @override
  int get hashCode =>
    (isReserved == null ? 0 : isReserved.hashCode) +
    (numReservedFan == null ? 0 : numReservedFan.hashCode);

  @override
  String toString() => 'GrpcCountNumReservedFanResponse[isReserved=$isReserved, numReservedFan=$numReservedFan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (isReserved != null) {
      json[r'is_reserved'] = isReserved;
    }
    if (numReservedFan != null) {
      json[r'num_reserved_fan'] = numReservedFan;
    }
    return json;
  }

  /// Returns a new [GrpcCountNumReservedFanResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcCountNumReservedFanResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcCountNumReservedFanResponse(
        isReserved: json[r'is_reserved'],
        numReservedFan: json[r'num_reserved_fan'],
    );

  static List<GrpcCountNumReservedFanResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcCountNumReservedFanResponse>[]
      : json.map((dynamic value) => GrpcCountNumReservedFanResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcCountNumReservedFanResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcCountNumReservedFanResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcCountNumReservedFanResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcCountNumReservedFanResponse-objects as value to a dart map
  static Map<String, List<GrpcCountNumReservedFanResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcCountNumReservedFanResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcCountNumReservedFanResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

