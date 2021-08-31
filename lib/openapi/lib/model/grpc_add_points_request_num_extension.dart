//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcAddPointsRequestNumExtension {
  /// Instantiate a new enum with the provided [value].
  const GrpcAddPointsRequestNumExtension._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcAddPointsRequestNumExtension._(0);
  static const number1 = GrpcAddPointsRequestNumExtension._(1);
  static const number2 = GrpcAddPointsRequestNumExtension._(2);
  static const number3 = GrpcAddPointsRequestNumExtension._(3);

  /// List of all possible values in this [enum][GrpcAddPointsRequestNumExtension].
  static const values = <GrpcAddPointsRequestNumExtension>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcAddPointsRequestNumExtension fromJson(dynamic value) =>
    GrpcAddPointsRequestNumExtensionTypeTransformer().decode(value);

  static List<GrpcAddPointsRequestNumExtension> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcAddPointsRequestNumExtension>[]
      : json
          .map((value) => GrpcAddPointsRequestNumExtension.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcAddPointsRequestNumExtension] to int,
/// and [decode] dynamic data back to [GrpcAddPointsRequestNumExtension].
class GrpcAddPointsRequestNumExtensionTypeTransformer {
  const GrpcAddPointsRequestNumExtensionTypeTransformer._();

  factory GrpcAddPointsRequestNumExtensionTypeTransformer() => _instance ??= GrpcAddPointsRequestNumExtensionTypeTransformer._();

  int encode(GrpcAddPointsRequestNumExtension data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcAddPointsRequestNumExtension.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcAddPointsRequestNumExtension decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcAddPointsRequestNumExtension.number0;
      case 1: return GrpcAddPointsRequestNumExtension.number1;
      case 2: return GrpcAddPointsRequestNumExtension.number2;
      case 3: return GrpcAddPointsRequestNumExtension.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcAddPointsRequestNumExtensionTypeTransformer] instance.
  static GrpcAddPointsRequestNumExtensionTypeTransformer _instance;
}
