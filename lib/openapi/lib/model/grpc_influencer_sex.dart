//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcInfluencerSex {
  /// Instantiate a new enum with the provided [value].
  const GrpcInfluencerSex._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcInfluencerSex._(0);
  static const number1 = GrpcInfluencerSex._(1);
  static const number2 = GrpcInfluencerSex._(2);
  static const number3 = GrpcInfluencerSex._(3);

  /// List of all possible values in this [enum][GrpcInfluencerSex].
  static const values = <GrpcInfluencerSex>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcInfluencerSex fromJson(dynamic value) =>
    GrpcInfluencerSexTypeTransformer().decode(value);

  static List<GrpcInfluencerSex> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerSex>[]
      : json
          .map((value) => GrpcInfluencerSex.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcInfluencerSex] to int,
/// and [decode] dynamic data back to [GrpcInfluencerSex].
class GrpcInfluencerSexTypeTransformer {
  const GrpcInfluencerSexTypeTransformer._();

  factory GrpcInfluencerSexTypeTransformer() => _instance ??= GrpcInfluencerSexTypeTransformer._();

  int encode(GrpcInfluencerSex data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcInfluencerSex.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcInfluencerSex decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcInfluencerSex.number0;
      case 1: return GrpcInfluencerSex.number1;
      case 2: return GrpcInfluencerSex.number2;
      case 3: return GrpcInfluencerSex.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcInfluencerSexTypeTransformer] instance.
  static GrpcInfluencerSexTypeTransformer _instance;
}
