import 'package:onlylive/domain/entities/talent.dart';
import 'package:openapi/api.dart';

class GenreMapper {
  static const genreMap = {
    Genre.nonGenre: GrpcGenre.nonGenre,
    Genre.model: GrpcGenre.model,
    Genre.actor: GrpcGenre.actor,
    Genre.actress: GrpcGenre.actress,
    Genre.youtuber: GrpcGenre.youtuber,
    Genre.liver: GrpcGenre.liver,
    Genre.instagrammer: GrpcGenre.instagrammer,
    Genre.tiktoker: GrpcGenre.tiktoker,
    Genre.idol: GrpcGenre.idol,
    Genre.cosplayer: GrpcGenre.cosplayer,
    Genre.voiceActor: GrpcGenre.voiceActor,
    Genre.talent: GrpcGenre.talent,
    Genre.artist: GrpcGenre.artist,
    Genre.comedian: GrpcGenre.comedian,
    Genre.fortuneTeller: GrpcGenre.fortuneTeller,
    Genre.other: GrpcGenre.other,
    Genre.influencer: GrpcGenre.influencer,
  };

  static Genre decode(GrpcGenre grpc) {
    return genreMap.entries
        .firstWhere((element) => element.value == grpc,
            orElse: () => const MapEntry<Genre, GrpcGenre>(
                Genre.nonGenre, GrpcGenre.nonGenre))
        .key;
  }

  static GrpcGenre encode(Genre genre) {
    return genreMap.entries.firstWhere((element) => element.key == genre).value;
  }
}
