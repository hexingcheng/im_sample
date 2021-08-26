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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = FanNotificationRequestSegment._(r'all');
  static const designate = FanNotificationRequestSegment._(r'designate');

  /// List of all possible values in this [enum][FanNotificationRequestSegment].
  static const values = <FanNotificationRequestSegment>[
    all,
    designate,
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

/// Transformation class that can [encode] an instance of [FanNotificationRequestSegment] to String,
/// and [decode] dynamic data back to [FanNotificationRequestSegment].
class FanNotificationRequestSegmentTypeTransformer {
  const FanNotificationRequestSegmentTypeTransformer._();

  factory FanNotificationRequestSegmentTypeTransformer() => _instance ??= FanNotificationRequestSegmentTypeTransformer._();

  String encode(FanNotificationRequestSegment data) => data.value;

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
      case r'all': return FanNotificationRequestSegment.all;
      case r'designate': return FanNotificationRequestSegment.designate;
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
