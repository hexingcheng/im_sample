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
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcFanmeetingStyle._(0);
  static const number1 = GrpcFanmeetingStyle._(1);
  static const number2 = GrpcFanmeetingStyle._(2);

  /// List of all possible values in this [enum][GrpcFanmeetingStyle].
  static const values = <GrpcFanmeetingStyle>[
    number0,
    number1,
    number2,
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

/// Transformation class that can [encode] an instance of [GrpcFanmeetingStyle] to int,
/// and [decode] dynamic data back to [GrpcFanmeetingStyle].
class GrpcFanmeetingStyleTypeTransformer {
  const GrpcFanmeetingStyleTypeTransformer._();

  factory GrpcFanmeetingStyleTypeTransformer() => _instance ??= GrpcFanmeetingStyleTypeTransformer._();

  int encode(GrpcFanmeetingStyle data) => data.value;

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
      case 0: return GrpcFanmeetingStyle.number0;
      case 1: return GrpcFanmeetingStyle.number1;
      case 2: return GrpcFanmeetingStyle.number2;
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
