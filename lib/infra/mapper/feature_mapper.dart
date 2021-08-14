import 'package:onlylive/domain/entities/feature.dart';

class FeatureMapper {
  static Feature fromJSON(Map<String, dynamic> json) {
    return Feature(
      title: json["title"] as String,
      imageUrl: json["image_uri"] as String,
      webViewUrl: json["webview_uri"] as String,
    );
  }
}
