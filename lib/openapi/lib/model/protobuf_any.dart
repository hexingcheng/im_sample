//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProtobufAny {
  /// Returns a new [ProtobufAny] instance.
  ProtobufAny({
    this.typeUrl,
    this.value,
  });

  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message. This string must contain at least one \"/\" character. The last segment of the URL's path must represent the fully qualified name of the type (as in `path/google.protobuf.Duration`). The name should be in a canonical form (e.g., leading \".\" is not accepted).  In practice, teams usually precompile into the binary all types that they expect it to use in the context of Any. However, for URLs which use the scheme `http`, `https`, or no scheme, one can optionally set up a type server that maps type URLs to message definitions as follows:  * If no scheme is provided, `https` is assumed. * An HTTP GET on the URL must yield a [google.protobuf.Type][]   value in binary format, or produce an error. * Applications are allowed to cache lookup results based on the   URL, or have them precompiled into a binary to avoid any   lookup. Therefore, binary compatibility needs to be preserved   on changes to types. (Use versioned type names to manage   breaking changes.)  Note: this functionality is not currently available in the official protobuf release, and it is not used for type URLs beginning with type.googleapis.com.  Schemes other than `http`, `https` (or the empty scheme) might be used with implementation specific semantics.
  String typeUrl;

  /// Must be a valid serialized protocol buffer of the above specified type.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProtobufAny &&
     other.typeUrl == typeUrl &&
     other.value == value;

  @override
  int get hashCode =>
    (typeUrl == null ? 0 : typeUrl.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'ProtobufAny[typeUrl=$typeUrl, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (typeUrl != null) {
      json[r'type_url'] = typeUrl;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [ProtobufAny] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProtobufAny fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProtobufAny(
        typeUrl: json[r'type_url'],
        value: json[r'value'],
    );

  static List<ProtobufAny> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProtobufAny>[]
      : json.map((dynamic value) => ProtobufAny.fromJson(value)).toList(growable: true == growable);

  static Map<String, ProtobufAny> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProtobufAny>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ProtobufAny.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProtobufAny-objects as value to a dart map
  static Map<String, List<ProtobufAny>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProtobufAny>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ProtobufAny.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

