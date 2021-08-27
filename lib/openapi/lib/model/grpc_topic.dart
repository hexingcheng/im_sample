//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcTopic {
  /// Instantiate a new enum with the provided [value].
  const GrpcTopic._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nonTopic = GrpcTopic._(r'non_topic');
  static const popular = GrpcTopic._(r'popular');

  /// List of all possible values in this [enum][GrpcTopic].
  static const values = <GrpcTopic>[
    nonTopic,
    popular,
  ];

  static GrpcTopic fromJson(dynamic value) =>
    GrpcTopicTypeTransformer().decode(value);

  static List<GrpcTopic> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcTopic>[]
      : json
          .map((value) => GrpcTopic.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcTopic] to String,
/// and [decode] dynamic data back to [GrpcTopic].
class GrpcTopicTypeTransformer {
  const GrpcTopicTypeTransformer._();

  factory GrpcTopicTypeTransformer() => _instance ??= GrpcTopicTypeTransformer._();

  String encode(GrpcTopic data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcTopic.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcTopic decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'non_topic': return GrpcTopic.nonTopic;
      case r'popular': return GrpcTopic.popular;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcTopicTypeTransformer] instance.
  static GrpcTopicTypeTransformer _instance;
}
