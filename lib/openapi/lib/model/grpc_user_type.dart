//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcUserType {
  /// Instantiate a new enum with the provided [value].
  const GrpcUserType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcUserType._(r'user_type_unknown');
  static const fan = GrpcUserType._(r'user_type_fan');
  static const influencer = GrpcUserType._(r'user_type_influencer');

  /// List of all possible values in this [enum][GrpcUserType].
  static const values = <GrpcUserType>[
    unknown,
    fan,
    influencer,
  ];

  static GrpcUserType fromJson(dynamic value) =>
    GrpcUserTypeTypeTransformer().decode(value);

  static List<GrpcUserType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcUserType>[]
      : json
          .map((value) => GrpcUserType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcUserType] to String,
/// and [decode] dynamic data back to [GrpcUserType].
class GrpcUserTypeTypeTransformer {
  const GrpcUserTypeTypeTransformer._();

  factory GrpcUserTypeTypeTransformer() => _instance ??= GrpcUserTypeTypeTransformer._();

  String encode(GrpcUserType data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcUserType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcUserType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'user_type_unknown': return GrpcUserType.unknown;
      case r'user_type_fan': return GrpcUserType.fan;
      case r'user_type_influencer': return GrpcUserType.influencer;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcUserTypeTypeTransformer] instance.
  static GrpcUserTypeTypeTransformer _instance;
}
