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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const first = GrpcNumExtension._(r'first');
  static const one = GrpcNumExtension._(r'one');
  static const two = GrpcNumExtension._(r'two');
  static const three = GrpcNumExtension._(r'three');

  /// List of all possible values in this [enum][GrpcNumExtension].
  static const values = <GrpcNumExtension>[
    first,
    one,
    two,
    three,
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

/// Transformation class that can [encode] an instance of [GrpcNumExtension] to String,
/// and [decode] dynamic data back to [GrpcNumExtension].
class GrpcNumExtensionTypeTransformer {
  const GrpcNumExtensionTypeTransformer._();

  factory GrpcNumExtensionTypeTransformer() => _instance ??= GrpcNumExtensionTypeTransformer._();

  String encode(GrpcNumExtension data) => data.value;

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
      case r'first': return GrpcNumExtension.first;
      case r'one': return GrpcNumExtension.one;
      case r'two': return GrpcNumExtension.two;
      case r'three': return GrpcNumExtension.three;
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
