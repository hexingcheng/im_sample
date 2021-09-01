//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InfluencerSignUpRequestSex {
  /// Instantiate a new enum with the provided [value].
  const InfluencerSignUpRequestSex._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = InfluencerSignUpRequestSex._(r'unknown');
  static const man = InfluencerSignUpRequestSex._(r'man');
  static const woman = InfluencerSignUpRequestSex._(r'woman');
  static const undefined = InfluencerSignUpRequestSex._(r'undefined');

  /// List of all possible values in this [enum][InfluencerSignUpRequestSex].
  static const values = <InfluencerSignUpRequestSex>[
    unknown,
    man,
    woman,
    undefined,
  ];

  static InfluencerSignUpRequestSex fromJson(dynamic value) =>
    InfluencerSignUpRequestSexTypeTransformer().decode(value);

  static List<InfluencerSignUpRequestSex> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InfluencerSignUpRequestSex>[]
      : json
          .map((value) => InfluencerSignUpRequestSex.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InfluencerSignUpRequestSex] to String,
/// and [decode] dynamic data back to [InfluencerSignUpRequestSex].
class InfluencerSignUpRequestSexTypeTransformer {
  const InfluencerSignUpRequestSexTypeTransformer._();

  factory InfluencerSignUpRequestSexTypeTransformer() => _instance ??= InfluencerSignUpRequestSexTypeTransformer._();

  String encode(InfluencerSignUpRequestSex data) => data.value;

  /// Decodes a [dynamic value][data] to a InfluencerSignUpRequestSex.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InfluencerSignUpRequestSex decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'unknown': return InfluencerSignUpRequestSex.unknown;
      case r'man': return InfluencerSignUpRequestSex.man;
      case r'woman': return InfluencerSignUpRequestSex.woman;
      case r'undefined': return InfluencerSignUpRequestSex.undefined;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InfluencerSignUpRequestSexTypeTransformer] instance.
  static InfluencerSignUpRequestSexTypeTransformer _instance;
}
