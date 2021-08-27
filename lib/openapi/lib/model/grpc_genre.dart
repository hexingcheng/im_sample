//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GrpcGenre {
  /// Instantiate a new enum with the provided [value].
  const GrpcGenre._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nonGenre = GrpcGenre._(r'non_genre');
  static const model = GrpcGenre._(r'model');
  static const actor = GrpcGenre._(r'actor');
  static const actress = GrpcGenre._(r'actress');
  static const youtuber = GrpcGenre._(r'youtuber');
  static const liver = GrpcGenre._(r'liver');
  static const instagrammer = GrpcGenre._(r'instagrammer');
  static const tiktoker = GrpcGenre._(r'tiktoker');
  static const idol = GrpcGenre._(r'idol');
  static const cosplayer = GrpcGenre._(r'cosplayer');
  static const voiceActor = GrpcGenre._(r'voice_actor');
  static const talent = GrpcGenre._(r'talent');
  static const artist = GrpcGenre._(r'artist');
  static const comedian = GrpcGenre._(r'comedian');
  static const fortuneTeller = GrpcGenre._(r'fortune_teller');
  static const other = GrpcGenre._(r'other');
  static const influencer = GrpcGenre._(r'influencer');

  /// List of all possible values in this [enum][GrpcGenre].
  static const values = <GrpcGenre>[
    nonGenre,
    model,
    actor,
    actress,
    youtuber,
    liver,
    instagrammer,
    tiktoker,
    idol,
    cosplayer,
    voiceActor,
    talent,
    artist,
    comedian,
    fortuneTeller,
    other,
    influencer,
  ];

  static GrpcGenre fromJson(dynamic value) =>
    GrpcGenreTypeTransformer().decode(value);

  static List<GrpcGenre> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGenre>[]
      : json
          .map((value) => GrpcGenre.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [GrpcGenre] to String,
/// and [decode] dynamic data back to [GrpcGenre].
class GrpcGenreTypeTransformer {
  const GrpcGenreTypeTransformer._();

  factory GrpcGenreTypeTransformer() => _instance ??= GrpcGenreTypeTransformer._();

  String encode(GrpcGenre data) => data.value;

  /// Decodes a [dynamic value][data] to a GrpcGenre.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrpcGenre decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'non_genre': return GrpcGenre.nonGenre;
      case r'model': return GrpcGenre.model;
      case r'actor': return GrpcGenre.actor;
      case r'actress': return GrpcGenre.actress;
      case r'youtuber': return GrpcGenre.youtuber;
      case r'liver': return GrpcGenre.liver;
      case r'instagrammer': return GrpcGenre.instagrammer;
      case r'tiktoker': return GrpcGenre.tiktoker;
      case r'idol': return GrpcGenre.idol;
      case r'cosplayer': return GrpcGenre.cosplayer;
      case r'voice_actor': return GrpcGenre.voiceActor;
      case r'talent': return GrpcGenre.talent;
      case r'artist': return GrpcGenre.artist;
      case r'comedian': return GrpcGenre.comedian;
      case r'fortune_teller': return GrpcGenre.fortuneTeller;
      case r'other': return GrpcGenre.other;
      case r'influencer': return GrpcGenre.influencer;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [GrpcGenreTypeTransformer] instance.
  static GrpcGenreTypeTransformer _instance;
}
