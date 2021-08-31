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
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcHealthStatus._(0);
  static const number1 = GrpcHealthStatus._(1);
  static const number2 = GrpcHealthStatus._(2);
  static const number3 = GrpcHealthStatus._(3);
  static const number4 = GrpcHealthStatus._(4);

  /// List of all possible values in this [enum][GrpcHealthStatus].
  static const values = <GrpcHealthStatus>[
    number0,
    number1,
    number2,
    number3,
    number4,
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

/// Transformation class that can [encode] an instance of [GrpcHealthStatus] to int,
/// and [decode] dynamic data back to [GrpcHealthStatus].
class GrpcHealthStatusTypeTransformer {
  const GrpcHealthStatusTypeTransformer._();

  factory GrpcHealthStatusTypeTransformer() => _instance ??= GrpcHealthStatusTypeTransformer._();

  int encode(GrpcHealthStatus data) => data.value;

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
      case 0: return GrpcHealthStatus.number0;
      case 1: return GrpcHealthStatus.number1;
      case 2: return GrpcHealthStatus.number2;
      case 3: return GrpcHealthStatus.number3;
      case 4: return GrpcHealthStatus.number4;
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
