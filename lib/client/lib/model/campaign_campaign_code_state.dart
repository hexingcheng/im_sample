//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CampaignCampaignCodeState {
  /// Instantiate a new enum with the provided [value].
  const CampaignCampaignCodeState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const stateUnknown = CampaignCampaignCodeState._(r'state_unknown');
  static const notUsed = CampaignCampaignCodeState._(r'not_used');
  static const used = CampaignCampaignCodeState._(r'used');

  /// List of all possible values in this [enum][CampaignCampaignCodeState].
  static const values = <CampaignCampaignCodeState>[
    stateUnknown,
    notUsed,
    used,
  ];

  static CampaignCampaignCodeState fromJson(dynamic value) =>
    CampaignCampaignCodeStateTypeTransformer().decode(value);

  static List<CampaignCampaignCodeState> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CampaignCampaignCodeState>[]
      : json
          .map((value) => CampaignCampaignCodeState.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CampaignCampaignCodeState] to String,
/// and [decode] dynamic data back to [CampaignCampaignCodeState].
class CampaignCampaignCodeStateTypeTransformer {
  const CampaignCampaignCodeStateTypeTransformer._();

  factory CampaignCampaignCodeStateTypeTransformer() => _instance ??= CampaignCampaignCodeStateTypeTransformer._();

  String encode(CampaignCampaignCodeState data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignCampaignCodeState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignCampaignCodeState decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'state_unknown': return CampaignCampaignCodeState.stateUnknown;
      case r'not_used': return CampaignCampaignCodeState.notUsed;
      case r'used': return CampaignCampaignCodeState.used;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CampaignCampaignCodeStateTypeTransformer] instance.
  static CampaignCampaignCodeStateTypeTransformer _instance;
}
