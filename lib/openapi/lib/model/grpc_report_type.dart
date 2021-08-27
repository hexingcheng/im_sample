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
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const slander = GrpcReportType._(r'slander');
  static const adult = GrpcReportType._(r'adult');
  static const encounter = GrpcReportType._(r'encounter');
  static const contravention = GrpcReportType._(r'contravention');
  static const otherReport = GrpcReportType._(r'otherReport');

  /// List of all possible values in this [enum][GrpcReportType].
  static const values = <GrpcReportType>[
    slander,
    adult,
    encounter,
    contravention,
    otherReport,
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

/// Transformation class that can [encode] an instance of [GrpcReportType] to String,
/// and [decode] dynamic data back to [GrpcReportType].
class GrpcReportTypeTypeTransformer {
  const GrpcReportTypeTypeTransformer._();

  factory GrpcReportTypeTypeTransformer() => _instance ??= GrpcReportTypeTypeTransformer._();

  String encode(GrpcReportType data) => data.value;

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
      case r'slander': return GrpcReportType.slander;
      case r'adult': return GrpcReportType.adult;
      case r'encounter': return GrpcReportType.encounter;
      case r'contravention': return GrpcReportType.contravention;
      case r'otherReport': return GrpcReportType.otherReport;
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
