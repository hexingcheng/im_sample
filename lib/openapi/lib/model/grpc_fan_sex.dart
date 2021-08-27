//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcFanSex {
  /// Instantiate a new enum with the provided [value].
  const GrpcFanSex._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcFanSex._(r'unknown');
  static const man = GrpcFanSex._(r'man');
  static const woman = GrpcFanSex._(r'woman');
  static const undefined = GrpcFanSex._(r'undefined');

  /// List of all possible values in this [enum][GrpcFanSex].
  static const values = <GrpcFanSex>[
    unknown,
    man,
    woman,
    undefined,
  ];

  static GrpcFanSex fromJson(dynamic value) =>
    GrpcFanSexTypeTransformer().decode(value);

  static List<GrpcFanSex> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanSex>[]
      : json
          .map((value) => GrpcFanSex.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcFanSex] to String,
/// and [decode] dynamic data back to [GrpcFanSex].
class GrpcFanSexTypeTransformer {
  const GrpcFanSexTypeTransformer._();

  factory GrpcFanSexTypeTransformer() => _instance ??= GrpcFanSexTypeTransformer._();

  String encode(GrpcFanSex data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcFanSex.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcFanSex decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'unknown': return GrpcFanSex.unknown;
      case r'man': return GrpcFanSex.man;
      case r'woman': return GrpcFanSex.woman;
      case r'undefined': return GrpcFanSex.undefined;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcFanSexTypeTransformer] instance.
  static GrpcFanSexTypeTransformer _instance;
}
