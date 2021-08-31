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
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcReasonCancelMembership._(0);
  static const number1 = GrpcReasonCancelMembership._(1);
  static const number2 = GrpcReasonCancelMembership._(2);
  static const number3 = GrpcReasonCancelMembership._(3);
  static const number4 = GrpcReasonCancelMembership._(4);
  static const number5 = GrpcReasonCancelMembership._(5);
  static const number6 = GrpcReasonCancelMembership._(6);

  /// List of all possible values in this [enum][GrpcReasonCancelMembership].
  static const values = <GrpcReasonCancelMembership>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
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

/// Transformation class that can [encode] an instance of [GrpcReasonCancelMembership] to int,
/// and [decode] dynamic data back to [GrpcReasonCancelMembership].
class GrpcReasonCancelMembershipTypeTransformer {
  const GrpcReasonCancelMembershipTypeTransformer._();

  factory GrpcReasonCancelMembershipTypeTransformer() => _instance ??= GrpcReasonCancelMembershipTypeTransformer._();

  int encode(GrpcReasonCancelMembership data) => data.value;

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
      case 0: return GrpcReasonCancelMembership.number0;
      case 1: return GrpcReasonCancelMembership.number1;
      case 2: return GrpcReasonCancelMembership.number2;
      case 3: return GrpcReasonCancelMembership.number3;
      case 4: return GrpcReasonCancelMembership.number4;
      case 5: return GrpcReasonCancelMembership.number5;
      case 6: return GrpcReasonCancelMembership.number6;
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
