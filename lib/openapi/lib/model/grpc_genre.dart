//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcGenre {
  /// Instantiate a new enum with the provided [value].
  const GrpcGenre._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcGenre._(0);
  static const number1 = GrpcGenre._(1);
  static const number2 = GrpcGenre._(2);
  static const number3 = GrpcGenre._(3);
  static const number4 = GrpcGenre._(4);
  static const number5 = GrpcGenre._(5);
  static const number6 = GrpcGenre._(6);
  static const number7 = GrpcGenre._(7);
  static const number8 = GrpcGenre._(8);
  static const number9 = GrpcGenre._(9);
  static const number10 = GrpcGenre._(10);
  static const number11 = GrpcGenre._(11);
  static const number12 = GrpcGenre._(12);
  static const number13 = GrpcGenre._(13);
  static const number14 = GrpcGenre._(14);
  static const number15 = GrpcGenre._(15);
  static const number16 = GrpcGenre._(16);

  /// List of all possible values in this [enum][GrpcGenre].
  static const values = <GrpcGenre>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
    number7,
    number8,
    number9,
    number10,
    number11,
    number12,
    number13,
    number14,
    number15,
    number16,
  ];

  static GrpcGenre fromJson(dynamic value) =>
    GrpcGenreTypeTransformer().decode(value);

  static List<GrpcGenre> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGenre>[]
      : json
          .map((value) => GrpcGenre.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcGenre] to int,
/// and [decode] dynamic data back to [GrpcGenre].
class GrpcGenreTypeTransformer {
  const GrpcGenreTypeTransformer._();

  factory GrpcGenreTypeTransformer() => _instance ??= GrpcGenreTypeTransformer._();

  int encode(GrpcGenre data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcGenre.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcGenre decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcGenre.number0;
      case 1: return GrpcGenre.number1;
      case 2: return GrpcGenre.number2;
      case 3: return GrpcGenre.number3;
      case 4: return GrpcGenre.number4;
      case 5: return GrpcGenre.number5;
      case 6: return GrpcGenre.number6;
      case 7: return GrpcGenre.number7;
      case 8: return GrpcGenre.number8;
      case 9: return GrpcGenre.number9;
      case 10: return GrpcGenre.number10;
      case 11: return GrpcGenre.number11;
      case 12: return GrpcGenre.number12;
      case 13: return GrpcGenre.number13;
      case 14: return GrpcGenre.number14;
      case 15: return GrpcGenre.number15;
      case 16: return GrpcGenre.number16;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcGenreTypeTransformer] instance.
  static GrpcGenreTypeTransformer _instance;
}
