//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CallToFanRequestAction {
  /// Instantiate a new enum with the provided [value].
  const CallToFanRequestAction._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const call = CallToFanRequestAction._(r'call');
  static const hangOut = CallToFanRequestAction._(r'hang_out');

  /// List of all possible values in this [enum][CallToFanRequestAction].
  static const values = <CallToFanRequestAction>[
    call,
    hangOut,
  ];

  static CallToFanRequestAction fromJson(dynamic value) =>
    CallToFanRequestActionTypeTransformer().decode(value);

  static List<CallToFanRequestAction> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CallToFanRequestAction>[]
      : json
          .map((value) => CallToFanRequestAction.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CallToFanRequestAction] to String,
/// and [decode] dynamic data back to [CallToFanRequestAction].
class CallToFanRequestActionTypeTransformer {
  const CallToFanRequestActionTypeTransformer._();

  factory CallToFanRequestActionTypeTransformer() => _instance ??= CallToFanRequestActionTypeTransformer._();

  String encode(CallToFanRequestAction data) => data.value;

  /// Decodes a [dynamic value][data] to a CallToFanRequestAction.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CallToFanRequestAction decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'call': return CallToFanRequestAction.call;
      case r'hang_out': return CallToFanRequestAction.hangOut;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CallToFanRequestActionTypeTransformer] instance.
  static CallToFanRequestActionTypeTransformer _instance;
}
