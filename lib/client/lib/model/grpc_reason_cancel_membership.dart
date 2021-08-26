//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcReasonCancelMembership {
  /// Instantiate a new enum with the provided [value].
  const GrpcReasonCancelMembership._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknownReason = GrpcReasonCancelMembership._(r'unknownReason');
  static const notExistLikeInfluencer = GrpcReasonCancelMembership._(r'notExistLikeInfluencer');
  static const manyBugs = GrpcReasonCancelMembership._(r'manyBugs');
  static const chargeDissatisfaction = GrpcReasonCancelMembership._(r'chargeDissatisfaction');
  static const supportDissatisfaction = GrpcReasonCancelMembership._(r'supportDissatisfaction');
  static const slanderFromInfluencer = GrpcReasonCancelMembership._(r'slanderFromInfluencer');
  static const otherReason = GrpcReasonCancelMembership._(r'otherReason');

  /// List of all possible values in this [enum][GrpcReasonCancelMembership].
  static const values = <GrpcReasonCancelMembership>[
    unknownReason,
    notExistLikeInfluencer,
    manyBugs,
    chargeDissatisfaction,
    supportDissatisfaction,
    slanderFromInfluencer,
    otherReason,
  ];

  static GrpcReasonCancelMembership fromJson(dynamic value) =>
    GrpcReasonCancelMembershipTypeTransformer().decode(value);

  static List<GrpcReasonCancelMembership> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcReasonCancelMembership>[]
      : json
          .map((value) => GrpcReasonCancelMembership.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcReasonCancelMembership] to String,
/// and [decode] dynamic data back to [GrpcReasonCancelMembership].
class GrpcReasonCancelMembershipTypeTransformer {
  const GrpcReasonCancelMembershipTypeTransformer._();

  factory GrpcReasonCancelMembershipTypeTransformer() => _instance ??= GrpcReasonCancelMembershipTypeTransformer._();

  String encode(GrpcReasonCancelMembership data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcReasonCancelMembership.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcReasonCancelMembership decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'unknownReason': return GrpcReasonCancelMembership.unknownReason;
      case r'notExistLikeInfluencer': return GrpcReasonCancelMembership.notExistLikeInfluencer;
      case r'manyBugs': return GrpcReasonCancelMembership.manyBugs;
      case r'chargeDissatisfaction': return GrpcReasonCancelMembership.chargeDissatisfaction;
      case r'supportDissatisfaction': return GrpcReasonCancelMembership.supportDissatisfaction;
      case r'slanderFromInfluencer': return GrpcReasonCancelMembership.slanderFromInfluencer;
      case r'otherReason': return GrpcReasonCancelMembership.otherReason;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcReasonCancelMembershipTypeTransformer] instance.
  static GrpcReasonCancelMembershipTypeTransformer _instance;
}
