//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcConsumeBalanceResponse {
  /// Returns a new [GrpcConsumeBalanceResponse] instance.
  GrpcConsumeBalanceResponse({
    this.body,
  });

  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcConsumeBalanceResponse &&
     other.body == body;

  @override
  int get hashCode =>
    (body == null ? 0 : body.hashCode);

  @override
  String toString() => 'GrpcConsumeBalanceResponse[body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  /// Returns a new [GrpcConsumeBalanceResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcConsumeBalanceResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcConsumeBalanceResponse(
        body: json[r'body'],
    );

  static List<GrpcConsumeBalanceResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcConsumeBalanceResponse>[]
      : json.map((dynamic value) => GrpcConsumeBalanceResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcConsumeBalanceResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcConsumeBalanceResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcConsumeBalanceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcConsumeBalanceResponse-objects as value to a dart map
  static Map<String, List<GrpcConsumeBalanceResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcConsumeBalanceResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcConsumeBalanceResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

