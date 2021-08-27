//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcMessageType {
  /// Instantiate a new enum with the provided [value].
  const GrpcMessageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = GrpcMessageType._(r'message_type_unknown');
  static const text = GrpcMessageType._(r'message_type_text');
  static const image = GrpcMessageType._(r'message_type_image');
  static const video = GrpcMessageType._(r'message_type_video');

  /// List of all possible values in this [enum][GrpcMessageType].
  static const values = <GrpcMessageType>[
    unknown,
    text,
    image,
    video,
  ];

  static GrpcMessageType fromJson(dynamic value) =>
    GrpcMessageTypeTypeTransformer().decode(value);

  static List<GrpcMessageType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcMessageType>[]
      : json
          .map((value) => GrpcMessageType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcMessageType] to String,
/// and [decode] dynamic data back to [GrpcMessageType].
class GrpcMessageTypeTypeTransformer {
  const GrpcMessageTypeTypeTransformer._();

  factory GrpcMessageTypeTypeTransformer() => _instance ??= GrpcMessageTypeTypeTransformer._();

  String encode(GrpcMessageType data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcMessageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcMessageType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'message_type_unknown': return GrpcMessageType.unknown;
      case r'message_type_text': return GrpcMessageType.text;
      case r'message_type_image': return GrpcMessageType.image;
      case r'message_type_video': return GrpcMessageType.video;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcMessageTypeTypeTransformer] instance.
  static GrpcMessageTypeTypeTransformer _instance;
}
