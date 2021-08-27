//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcHealthStatus {
  /// Instantiate a new enum with the provided [value].
  const GrpcHealthStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const healthUnknown = GrpcHealthStatus._(r'health_unknown');
  static const ok = GrpcHealthStatus._(r'ok');
  static const notFound = GrpcHealthStatus._(r'not_found');
  static const internal = GrpcHealthStatus._(r'internal');
  static const version = GrpcHealthStatus._(r'version');

  /// List of all possible values in this [enum][GrpcHealthStatus].
  static const values = <GrpcHealthStatus>[
    healthUnknown,
    ok,
    notFound,
    internal,
    version,
  ];

  static GrpcHealthStatus fromJson(dynamic value) =>
    GrpcHealthStatusTypeTransformer().decode(value);

  static List<GrpcHealthStatus> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcHealthStatus>[]
      : json
          .map((value) => GrpcHealthStatus.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcHealthStatus] to String,
/// and [decode] dynamic data back to [GrpcHealthStatus].
class GrpcHealthStatusTypeTransformer {
  const GrpcHealthStatusTypeTransformer._();

  factory GrpcHealthStatusTypeTransformer() => _instance ??= GrpcHealthStatusTypeTransformer._();

  String encode(GrpcHealthStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcHealthStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcHealthStatus decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'health_unknown': return GrpcHealthStatus.healthUnknown;
      case r'ok': return GrpcHealthStatus.ok;
      case r'not_found': return GrpcHealthStatus.notFound;
      case r'internal': return GrpcHealthStatus.internal;
      case r'version': return GrpcHealthStatus.version;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcHealthStatusTypeTransformer] instance.
  static GrpcHealthStatusTypeTransformer _instance;
}
