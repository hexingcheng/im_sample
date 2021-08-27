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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nonReservationState = GrpcReservationState._(r'non_reservation_state');
  static const wait = GrpcReservationState._(r'wait');
  static const done = GrpcReservationState._(r'done');
  static const abort = GrpcReservationState._(r'abort');

  /// List of all possible values in this [enum][GrpcReservationState].
  static const values = <GrpcReservationState>[
    nonReservationState,
    wait,
    done,
    abort,
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

/// Transformation class that can [encode] an instance of [GrpcReservationState] to String,
/// and [decode] dynamic data back to [GrpcReservationState].
class GrpcReservationStateTypeTransformer {
  const GrpcReservationStateTypeTransformer._();

  factory GrpcReservationStateTypeTransformer() => _instance ??= GrpcReservationStateTypeTransformer._();

  String encode(GrpcReservationState data) => data.value;

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
      case r'non_reservation_state': return GrpcReservationState.nonReservationState;
      case r'wait': return GrpcReservationState.wait;
      case r'done': return GrpcReservationState.done;
      case r'abort': return GrpcReservationState.abort;
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
