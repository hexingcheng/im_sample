import 'package:openapi/api.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:recase/recase.dart';

class GenreMapper {
  static final genres = Genre.values.toList();

  static Genre decode(GrpcGenre grpc) {
    return genres.firstWhere((genre) =>
        ReCase(genre.toString().split('.')[1]).snakeCase == grpc.value);
  }
}
