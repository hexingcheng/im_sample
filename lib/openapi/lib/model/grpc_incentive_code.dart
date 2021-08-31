//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcIncentiveCode {
  /// Instantiate a new enum with the provided [value].
  const GrpcIncentiveCode._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcIncentiveCode._(0);
  static const number1 = GrpcIncentiveCode._(1);
  static const number2 = GrpcIncentiveCode._(2);
  static const number3 = GrpcIncentiveCode._(3);

  /// List of all possible values in this [enum][GrpcIncentiveCode].
  static const values = <GrpcIncentiveCode>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcIncentiveCode fromJson(dynamic value) =>
    GrpcIncentiveCodeTypeTransformer().decode(value);

  static List<GrpcIncentiveCode> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcIncentiveCode>[]
      : json
          .map((value) => GrpcIncentiveCode.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcIncentiveCode] to int,
/// and [decode] dynamic data back to [GrpcIncentiveCode].
class GrpcIncentiveCodeTypeTransformer {
  const GrpcIncentiveCodeTypeTransformer._();

  factory GrpcIncentiveCodeTypeTransformer() => _instance ??= GrpcIncentiveCodeTypeTransformer._();

  int encode(GrpcIncentiveCode data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcIncentiveCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcIncentiveCode decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcIncentiveCode.number0;
      case 1: return GrpcIncentiveCode.number1;
      case 2: return GrpcIncentiveCode.number2;
      case 3: return GrpcIncentiveCode.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcIncentiveCodeTypeTransformer] instance.
  static GrpcIncentiveCodeTypeTransformer _instance;
}
