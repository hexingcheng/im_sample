//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcReservationState {
  /// Instantiate a new enum with the provided [value].
  const GrpcReservationState._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcReservationState._(0);
  static const number1 = GrpcReservationState._(1);
  static const number2 = GrpcReservationState._(2);
  static const number3 = GrpcReservationState._(3);

  /// List of all possible values in this [enum][GrpcReservationState].
  static const values = <GrpcReservationState>[
    number0,
    number1,
    number2,
    number3,
  ];

  static GrpcReservationState fromJson(dynamic value) =>
    GrpcReservationStateTypeTransformer().decode(value);

  static List<GrpcReservationState> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcReservationState>[]
      : json
          .map((value) => GrpcReservationState.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcReservationState] to int,
/// and [decode] dynamic data back to [GrpcReservationState].
class GrpcReservationStateTypeTransformer {
  const GrpcReservationStateTypeTransformer._();

  factory GrpcReservationStateTypeTransformer() => _instance ??= GrpcReservationStateTypeTransformer._();

  int encode(GrpcReservationState data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcReservationState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcReservationState decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcReservationState.number0;
      case 1: return GrpcReservationState.number1;
      case 2: return GrpcReservationState.number2;
      case 3: return GrpcReservationState.number3;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcReservationStateTypeTransformer] instance.
  static GrpcReservationStateTypeTransformer _instance;
}
