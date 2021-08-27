//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcFanmeetingStyle {
  /// Instantiate a new enum with the provided [value].
  const GrpcFanmeetingStyle._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcFanmeetingStyle._(r'style_unknown');
  static const regular = GrpcFanmeetingStyle._(r'style_regular');
  static const serial = GrpcFanmeetingStyle._(r'style_serial');

  /// List of all possible values in this [enum][GrpcFanmeetingStyle].
  static const values = <GrpcFanmeetingStyle>[
    unknown,
    regular,
    serial,
  ];

  static GrpcFanmeetingStyle fromJson(dynamic value) =>
    GrpcFanmeetingStyleTypeTransformer().decode(value);

  static List<GrpcFanmeetingStyle> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanmeetingStyle>[]
      : json
          .map((value) => GrpcFanmeetingStyle.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcFanmeetingStyle] to String,
/// and [decode] dynamic data back to [GrpcFanmeetingStyle].
class GrpcFanmeetingStyleTypeTransformer {
  const GrpcFanmeetingStyleTypeTransformer._();

  factory GrpcFanmeetingStyleTypeTransformer() => _instance ??= GrpcFanmeetingStyleTypeTransformer._();

  String encode(GrpcFanmeetingStyle data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcFanmeetingStyle.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcFanmeetingStyle decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'style_unknown': return GrpcFanmeetingStyle.unknown;
      case r'style_regular': return GrpcFanmeetingStyle.regular;
      case r'style_serial': return GrpcFanmeetingStyle.serial;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcFanmeetingStyleTypeTransformer] instance.
  static GrpcFanmeetingStyleTypeTransformer _instance;
}
