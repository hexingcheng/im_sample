//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FanNotificationRequestSegment {
  /// Instantiate a new enum with the provided [value].
  const FanNotificationRequestSegment._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = FanNotificationRequestSegment._(0);
  static const number1 = FanNotificationRequestSegment._(1);

  /// List of all possible values in this [enum][FanNotificationRequestSegment].
  static const values = <FanNotificationRequestSegment>[
    number0,
    number1,
  ];

  static FanNotificationRequestSegment fromJson(dynamic value) =>
    FanNotificationRequestSegmentTypeTransformer().decode(value);

  static List<FanNotificationRequestSegment> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FanNotificationRequestSegment>[]
      : json
          .map((value) => FanNotificationRequestSegment.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [FanNotificationRequestSegment] to int,
/// and [decode] dynamic data back to [FanNotificationRequestSegment].
class FanNotificationRequestSegmentTypeTransformer {
  const FanNotificationRequestSegmentTypeTransformer._();

  factory FanNotificationRequestSegmentTypeTransformer() => _instance ??= FanNotificationRequestSegmentTypeTransformer._();

  int encode(FanNotificationRequestSegment data) => data.value;

  /// Decodes a [dynamic value][data] to a FanNotificationRequestSegment.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FanNotificationRequestSegment decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return FanNotificationRequestSegment.number0;
      case 1: return FanNotificationRequestSegment.number1;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FanNotificationRequestSegmentTypeTransformer] instance.
  static FanNotificationRequestSegmentTypeTransformer _instance;
}
