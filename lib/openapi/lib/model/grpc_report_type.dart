//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcReportType {
  /// Instantiate a new enum with the provided [value].
  const GrpcReportType._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GrpcReportType._(0);
  static const number1 = GrpcReportType._(1);
  static const number2 = GrpcReportType._(2);
  static const number3 = GrpcReportType._(3);
  static const number4 = GrpcReportType._(4);

  /// List of all possible values in this [enum][GrpcReportType].
  static const values = <GrpcReportType>[
    number0,
    number1,
    number2,
    number3,
    number4,
  ];

  static GrpcReportType fromJson(dynamic value) =>
    GrpcReportTypeTypeTransformer().decode(value);

  static List<GrpcReportType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcReportType>[]
      : json
          .map((value) => GrpcReportType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcReportType] to int,
/// and [decode] dynamic data back to [GrpcReportType].
class GrpcReportTypeTypeTransformer {
  const GrpcReportTypeTypeTransformer._();

  factory GrpcReportTypeTypeTransformer() => _instance ??= GrpcReportTypeTypeTransformer._();

  int encode(GrpcReportType data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcReportType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcReportType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 0: return GrpcReportType.number0;
      case 1: return GrpcReportType.number1;
      case 2: return GrpcReportType.number2;
      case 3: return GrpcReportType.number3;
      case 4: return GrpcReportType.number4;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcReportTypeTypeTransformer] instance.
  static GrpcReportTypeTypeTransformer _instance;
}
