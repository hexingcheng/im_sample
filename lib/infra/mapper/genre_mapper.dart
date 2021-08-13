import 'package:onlylive/domain/entities/talent.dart';

class GenreMapper {
  static final genreList = Genre.values.map((value) => value).toList();

  static List<Genre> decode(List<dynamic> json) {
    final genres = <Genre>[];
    for (var i = 0; i < json.length; i++) {
      genres.add(genreList[i]);
    }
    return genres;
  }
}
