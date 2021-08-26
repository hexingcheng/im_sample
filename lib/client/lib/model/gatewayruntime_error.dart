//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GatewayruntimeError {
  /// Returns a new [GatewayruntimeError] instance.
  GatewayruntimeError({
    this.error,
    this.code,
    this.message,
    this.details = const [],
  });

  String error;

  int code;

  String message;

  List<ProtobufAny> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GatewayruntimeError &&
     other.error == error &&
     other.code == code &&
     other.message == message &&
     other.details == details;

  @override
  int get hashCode =>
    (error == null ? 0 : error.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (details == null ? 0 : details.hashCode);

  @override
  String toString() => 'GatewayruntimeError[error=$error, code=$code, message=$message, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (error != null) {
      json[r'error'] = error;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    return json;
  }

  /// Returns a new [GatewayruntimeError] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GatewayruntimeError fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GatewayruntimeError(
        error: json[r'error'],
        code: json[r'code'],
        message: json[r'message'],
        details: ProtobufAny.listFromJson(json[r'details']),
    );

  static List<GatewayruntimeError> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GatewayruntimeError>[]
      : json.map((dynamic value) => GatewayruntimeError.fromJson(value)).toList(growable: true == growable);

  static Map<String, GatewayruntimeError> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GatewayruntimeError>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GatewayruntimeError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GatewayruntimeError-objects as value to a dart map
  static Map<String, List<GatewayruntimeError>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GatewayruntimeError>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GatewayruntimeError.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

