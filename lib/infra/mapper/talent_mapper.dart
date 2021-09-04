import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/infra/mapper/genre_mapper.dart';
import 'package:openapi/api.dart';

class TalentMapper {
  static Talent decode(GrpcInfluencer grpc) {
    try {
      return Talent(
        uuid: grpc.uuid,
        annotationID: grpc.annotationId,
        introduction: grpc.introduction,
        displayName: grpc.displayName,
        mainSquareImageUrl: grpc.mainSquareImageUri,
        mainRectangleImageUrl: grpc.mainRectangleImageUri,
        imageUrls: grpc.imageUri,
        instagramUrl: grpc.instagramUrl,
        twitterUrl: grpc.twitterUrl,
        tiktokUrl: grpc.tiktokUrl,
        youtubeUrl: grpc.youtubeUrl,
        customLinkName: grpc.customLinkName,
        customLinkUrl: grpc.customLinkUrl,
        genre: grpc.genre.map(GenreMapper.decode).toList(),
      );
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
