//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcFanMeetingState {
  /// Instantiate a new enum with the provided [value].
  const GrpcFanMeetingState._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcFanMeetingState._(0);
  static const number1 = GrpcFanMeetingState._(1);
  static const number2 = GrpcFanMeetingState._(2);
  static const number3 = GrpcFanMeetingState._(3);
  static const number4 = GrpcFanMeetingState._(4);
  static const number5 = GrpcFanMeetingState._(5);

  /// List of all possible values in this [enum][GrpcFanMeetingState].
  static const values = <GrpcFanMeetingState>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
  ];

  static GrpcFanMeetingState fromJson(dynamic value) =>
    GrpcFanMeetingStateTypeTransformer().decode(value);

  static List<GrpcFanMeetingState> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFanMeetingState>[]
      : json
          .map((value) => GrpcFanMeetingState.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcFanMeetingState] to int,
/// and [decode] dynamic data back to [GrpcFanMeetingState].
class GrpcFanMeetingStateTypeTransformer {
  const GrpcFanMeetingStateTypeTransformer._();

  factory GrpcFanMeetingStateTypeTransformer() => _instance ??= GrpcFanMeetingStateTypeTransformer._();

  int encode(GrpcFanMeetingState data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcFanMeetingState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcFanMeetingState decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcFanMeetingState.number0;
      case 1: return GrpcFanMeetingState.number1;
      case 2: return GrpcFanMeetingState.number2;
      case 3: return GrpcFanMeetingState.number3;
      case 4: return GrpcFanMeetingState.number4;
      case 5: return GrpcFanMeetingState.number5;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcFanMeetingStateTypeTransformer] instance.
  static GrpcFanMeetingStateTypeTransformer _instance;
}
