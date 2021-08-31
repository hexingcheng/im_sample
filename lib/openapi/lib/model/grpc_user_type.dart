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
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcUserType._(0);
  static const number1 = GrpcUserType._(1);
  static const number2 = GrpcUserType._(2);

  /// List of all possible values in this [enum][GrpcUserType].
  static const values = <GrpcUserType>[
    number0,
    number1,
    number2,
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

/// Transformation class that can [encode] an instance of [GrpcUserType] to int,
/// and [decode] dynamic data back to [GrpcUserType].
class GrpcUserTypeTypeTransformer {
  const GrpcUserTypeTypeTransformer._();

  factory GrpcUserTypeTypeTransformer() => _instance ??= GrpcUserTypeTypeTransformer._();

  int encode(GrpcUserType data) => data.value;

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
      case 0: return GrpcUserType.number0;
      case 1: return GrpcUserType.number1;
      case 2: return GrpcUserType.number2;
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
