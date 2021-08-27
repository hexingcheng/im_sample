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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const stateUnknown = GrpcFanMeetingState._(r'state_unknown');
  static const finish = GrpcFanMeetingState._(r'finish');
  static const now = GrpcFanMeetingState._(r'now');
  static const future = GrpcFanMeetingState._(r'future');
  static const cancel = GrpcFanMeetingState._(r'cancel');
  static const notHeld = GrpcFanMeetingState._(r'not_held');

  /// List of all possible values in this [enum][GrpcFanMeetingState].
  static const values = <GrpcFanMeetingState>[
    stateUnknown,
    finish,
    now,
    future,
    cancel,
    notHeld,
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

/// Transformation class that can [encode] an instance of [GrpcFanMeetingState] to String,
/// and [decode] dynamic data back to [GrpcFanMeetingState].
class GrpcFanMeetingStateTypeTransformer {
  const GrpcFanMeetingStateTypeTransformer._();

  factory GrpcFanMeetingStateTypeTransformer() => _instance ??= GrpcFanMeetingStateTypeTransformer._();

  String encode(GrpcFanMeetingState data) => data.value;

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
      case r'state_unknown': return GrpcFanMeetingState.stateUnknown;
      case r'finish': return GrpcFanMeetingState.finish;
      case r'now': return GrpcFanMeetingState.now;
      case r'future': return GrpcFanMeetingState.future;
      case r'cancel': return GrpcFanMeetingState.cancel;
      case r'not_held': return GrpcFanMeetingState.notHeld;
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
