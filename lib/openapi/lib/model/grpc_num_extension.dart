//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcNumExtension {
  /// Instantiate a new enum with the provided [value].
  const GrpcNumExtension._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcNumExtension._(0);
  static const number1 = GrpcNumExtension._(1);
  static const number2 = GrpcNumExtension._(2);
  static const number3 = GrpcNumExtension._(3);

  /// List of all possible values in this [enum][GrpcNumExtension].
  static const values = <GrpcNumExtension>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcNumExtension fromJson(dynamic value) =>
    GrpcNumExtensionTypeTransformer().decode(value);

  static List<GrpcNumExtension> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcNumExtension>[]
      : json
          .map((value) => GrpcNumExtension.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcNumExtension] to int,
/// and [decode] dynamic data back to [GrpcNumExtension].
class GrpcNumExtensionTypeTransformer {
  const GrpcNumExtensionTypeTransformer._();

  factory GrpcNumExtensionTypeTransformer() => _instance ??= GrpcNumExtensionTypeTransformer._();

  int encode(GrpcNumExtension data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcNumExtension.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcNumExtension decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcNumExtension.number0;
      case 1: return GrpcNumExtension.number1;
      case 2: return GrpcNumExtension.number2;
      case 3: return GrpcNumExtension.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcNumExtensionTypeTransformer] instance.
  static GrpcNumExtensionTypeTransformer _instance;
}
