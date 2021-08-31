//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcInfluencerSignUpRequestSex {
  /// Instantiate a new enum with the provided [value].
  const GrpcInfluencerSignUpRequestSex._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcInfluencerSignUpRequestSex._(0);
  static const number1 = GrpcInfluencerSignUpRequestSex._(1);
  static const number2 = GrpcInfluencerSignUpRequestSex._(2);
  static const number3 = GrpcInfluencerSignUpRequestSex._(3);

  /// List of all possible values in this [enum][GrpcInfluencerSignUpRequestSex].
  static const values = <GrpcInfluencerSignUpRequestSex>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcInfluencerSignUpRequestSex fromJson(dynamic value) =>
    GrpcInfluencerSignUpRequestSexTypeTransformer().decode(value);

  static List<GrpcInfluencerSignUpRequestSex> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerSignUpRequestSex>[]
      : json
          .map((value) => GrpcInfluencerSignUpRequestSex.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcInfluencerSignUpRequestSex] to int,
/// and [decode] dynamic data back to [GrpcInfluencerSignUpRequestSex].
class GrpcInfluencerSignUpRequestSexTypeTransformer {
  const GrpcInfluencerSignUpRequestSexTypeTransformer._();

  factory GrpcInfluencerSignUpRequestSexTypeTransformer() => _instance ??= GrpcInfluencerSignUpRequestSexTypeTransformer._();

  int encode(GrpcInfluencerSignUpRequestSex data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcInfluencerSignUpRequestSex.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcInfluencerSignUpRequestSex decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcInfluencerSignUpRequestSex.number0;
      case 1: return GrpcInfluencerSignUpRequestSex.number1;
      case 2: return GrpcInfluencerSignUpRequestSex.number2;
      case 3: return GrpcInfluencerSignUpRequestSex.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcInfluencerSignUpRequestSexTypeTransformer] instance.
  static GrpcInfluencerSignUpRequestSexTypeTransformer _instance;
}
