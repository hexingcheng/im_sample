import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/infra/mapper/genre_mapper.dart';

class TalentMapper {
  static Talent fromJSON(Map<String, dynamic> json) {
    return Talent(
      uuid: json["uuid"] as String? ?? "",
      annotationID: json["annotation_id"] as String? ?? "",
      introduction: json["introduction"] as String? ?? "",
      displayName: json["display_name"] as String? ?? "",
      mainSquareImageUrl: json["main_square_image_uri"] as String? ?? "",
      mainRectangleImageUrl: json["main_rectangle_image_uri"] as String? ?? "",
      imageUrls: [],
      instagramUrl: json["instagram_url"] as String? ?? "",
      twitterUrl: json["twitter_url"] as String? ?? "",
      tiktokUrl: json["tiktok_url"] as String? ?? "",
      youtubeUrl: json["youtube_url"] as String? ?? "",
      customLinkName: json["custom_link_name"] as String? ?? "",
      customLinkUrl: json["custom_link_url"] as String? ?? "",
      genre: GenreMapper.decode(
        json["genre"] as List<dynamic>? ?? [],
      ),
    );
  }
}
