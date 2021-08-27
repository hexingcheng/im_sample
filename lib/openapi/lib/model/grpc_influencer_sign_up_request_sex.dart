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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcInfluencerSignUpRequestSex._(r'unknown');
  static const man = GrpcInfluencerSignUpRequestSex._(r'man');
  static const woman = GrpcInfluencerSignUpRequestSex._(r'woman');
  static const undefined = GrpcInfluencerSignUpRequestSex._(r'undefined');

  /// List of all possible values in this [enum][GrpcInfluencerSignUpRequestSex].
  static const values = <GrpcInfluencerSignUpRequestSex>[
    unknown,
    man,
    woman,
    undefined,
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

/// Transformation class that can [encode] an instance of [GrpcInfluencerSignUpRequestSex] to String,
/// and [decode] dynamic data back to [GrpcInfluencerSignUpRequestSex].
class GrpcInfluencerSignUpRequestSexTypeTransformer {
  const GrpcInfluencerSignUpRequestSexTypeTransformer._();

  factory GrpcInfluencerSignUpRequestSexTypeTransformer() => _instance ??= GrpcInfluencerSignUpRequestSexTypeTransformer._();

  String encode(GrpcInfluencerSignUpRequestSex data) => data.value;

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
      case r'unknown': return GrpcInfluencerSignUpRequestSex.unknown;
      case r'man': return GrpcInfluencerSignUpRequestSex.man;
      case r'woman': return GrpcInfluencerSignUpRequestSex.woman;
      case r'undefined': return GrpcInfluencerSignUpRequestSex.undefined;
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
