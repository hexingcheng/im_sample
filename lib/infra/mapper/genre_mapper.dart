import 'package:onlylive/domain/entities/talent.dart';
import 'package:openapi/api.dart';

class GenreMapper {
  static const genreMap = {
    Genre.nonGenre: GrpcGenre.number0,
    Genre.model: GrpcGenre.number1,
    Genre.actor: GrpcGenre.number2,
    Genre.actress: GrpcGenre.number3,
    Genre.youtuber: GrpcGenre.number4,
    Genre.liver: GrpcGenre.number5,
    Genre.instagrammer: GrpcGenre.number6,
    Genre.tiktoker: GrpcGenre.number7,
    Genre.idol: GrpcGenre.number8,
    Genre.cosplayer: GrpcGenre.number9,
    Genre.voiceActor: GrpcGenre.number10,
    Genre.talent: GrpcGenre.number11,
    Genre.artist: GrpcGenre.number12,
    Genre.comedian: GrpcGenre.number13,
    Genre.fortuneTeller: GrpcGenre.number14,
    Genre.other: GrpcGenre.number15,
    Genre.influencer: GrpcGenre.number16,
  };

  static Genre decode(GrpcGenre grpc) {
    return genreMap.entries
        .firstWhere((element) => element.value == grpc,
            orElse: () => const MapEntry<Genre, GrpcGenre>(
                Genre.nonGenre, GrpcGenre.number0))
        .key;
  }

  static GrpcGenre encode(Genre genre) {
    return genreMap.entries.firstWhere((element) => element.key == genre).value;
  }
}
