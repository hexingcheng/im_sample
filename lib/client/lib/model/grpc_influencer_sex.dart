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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcInfluencerSex._(r'unknown');
  static const man = GrpcInfluencerSex._(r'man');
  static const woman = GrpcInfluencerSex._(r'woman');
  static const undefined = GrpcInfluencerSex._(r'undefined');

  /// List of all possible values in this [enum][GrpcInfluencerSex].
  static const values = <GrpcInfluencerSex>[
    unknown,
    man,
    woman,
    undefined,
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

/// Transformation class that can [encode] an instance of [GrpcInfluencerSex] to String,
/// and [decode] dynamic data back to [GrpcInfluencerSex].
class GrpcInfluencerSexTypeTransformer {
  const GrpcInfluencerSexTypeTransformer._();

  factory GrpcInfluencerSexTypeTransformer() => _instance ??= GrpcInfluencerSexTypeTransformer._();

  String encode(GrpcInfluencerSex data) => data.value;

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
      case r'unknown': return GrpcInfluencerSex.unknown;
      case r'man': return GrpcInfluencerSex.man;
      case r'woman': return GrpcInfluencerSex.woman;
      case r'undefined': return GrpcInfluencerSex.undefined;
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
