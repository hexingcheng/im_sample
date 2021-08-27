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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = GrpcIncentiveCode._(r'none');
  static const point = GrpcIncentiveCode._(r'point');
  static const apologize = GrpcIncentiveCode._(r'apologize');
  static const campaign = GrpcIncentiveCode._(r'campaign');

  /// List of all possible values in this [enum][GrpcIncentiveCode].
  static const values = <GrpcIncentiveCode>[
    none,
    point,
    apologize,
    campaign,
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

/// Transformation class that can [encode] an instance of [GrpcIncentiveCode] to String,
/// and [decode] dynamic data back to [GrpcIncentiveCode].
class GrpcIncentiveCodeTypeTransformer {
  const GrpcIncentiveCodeTypeTransformer._();

  factory GrpcIncentiveCodeTypeTransformer() => _instance ??= GrpcIncentiveCodeTypeTransformer._();

  String encode(GrpcIncentiveCode data) => data.value;

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
      case r'none': return GrpcIncentiveCode.none;
      case r'point': return GrpcIncentiveCode.point;
      case r'apologize': return GrpcIncentiveCode.apologize;
      case r'campaign': return GrpcIncentiveCode.campaign;
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
