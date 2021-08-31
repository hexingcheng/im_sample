//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcOption {
  /// Instantiate a new enum with the provided [value].
  const GrpcOption._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcOption._(0);
  static const number1 = GrpcOption._(1);

  /// List of all possible values in this [enum][GrpcOption].
  static const values = <GrpcOption>[
    number0,
    number1,
  ];

  static GrpcOption fromJson(dynamic value) =>
    GrpcOptionTypeTransformer().decode(value);

  static List<GrpcOption> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcOption>[]
      : json
          .map((value) => GrpcOption.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcOption] to int,
/// and [decode] dynamic data back to [GrpcOption].
class GrpcOptionTypeTransformer {
  const GrpcOptionTypeTransformer._();

  factory GrpcOptionTypeTransformer() => _instance ??= GrpcOptionTypeTransformer._();

  int encode(GrpcOption data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcOption.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcOption decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcOption.number0;
      case 1: return GrpcOption.number1;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcOptionTypeTransformer] instance.
  static GrpcOptionTypeTransformer _instance;
}
