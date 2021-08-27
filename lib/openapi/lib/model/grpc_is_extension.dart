//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcIsExtension {
  /// Instantiate a new enum with the provided [value].
  const GrpcIsExtension._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const extensionUnknown = GrpcIsExtension._(r'extension_unknown');
  static const false_ = GrpcIsExtension._(r'false');
  static const true_ = GrpcIsExtension._(r'true');

  /// List of all possible values in this [enum][GrpcIsExtension].
  static const values = <GrpcIsExtension>[
    extensionUnknown,
    false_,
    true_,
  ];

  static GrpcIsExtension fromJson(dynamic value) =>
    GrpcIsExtensionTypeTransformer().decode(value);

  static List<GrpcIsExtension> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcIsExtension>[]
      : json
          .map((value) => GrpcIsExtension.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcIsExtension] to String,
/// and [decode] dynamic data back to [GrpcIsExtension].
class GrpcIsExtensionTypeTransformer {
  const GrpcIsExtensionTypeTransformer._();

  factory GrpcIsExtensionTypeTransformer() => _instance ??= GrpcIsExtensionTypeTransformer._();

  String encode(GrpcIsExtension data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcIsExtension.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcIsExtension decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'extension_unknown': return GrpcIsExtension.extensionUnknown;
      case r'false': return GrpcIsExtension.false_;
      case r'true': return GrpcIsExtension.true_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcIsExtensionTypeTransformer] instance.
  static GrpcIsExtensionTypeTransformer _instance;
}
