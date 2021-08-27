import 'package:onlylive/domain/entities/feature.dart';
import 'package:openapi/api.dart';

class FeatureMapper {
  static Feature decode(GrpcFeature grpc) {
    return Feature(
      title: grpc.title,
      imageUrl: grpc.imageUri,
      webViewUrl: grpc.webviewUri,
    );
  }
}
