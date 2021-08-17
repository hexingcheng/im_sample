import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/theme/theme.dart';

class Imgix extends StatelessWidget {
  const Imgix(
      {required this.context,
      required this.imageUrl,
      required this.width,
      required this.height,
      this.quality = 75,
      this.borderRadius = BorderRadius.zero,
      Key? key})
      : super(key: key);
  final BuildContext context;
  final String imageUrl;
  final double width;
  final double height;
  final double quality;
  final BorderRadius borderRadius;

  String _getImageUrl(String imageUrl) {
    final queryData = MediaQuery.of(context);
    final devicePixelRatio = queryData.devicePixelRatio;
    final regExp = RegExp(Config.app.gcsSourcePath);
    final imgixUrl = imageUrl.replaceFirst(regExp, Config.app.imgixHost);

    final queryParams = {
      "w": width,
      "h": height,
      "q": quality,
      "dpr": devicePixelRatio,
      "fit": "crop"
    };

    return addQueryParams(imgixUrl, queryParams);
  }

  String addQueryParams(String source, Map<String, Object> queryParams) {
    final addSource = [];
    queryParams.forEach((key, value) {
      if (key != "") {
        addSource.add("$key=$value");
      }
    });
    return "$source?${addSource.join("&")}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: OnlyliveColor.darkPurple,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          width: width,
          height: height,
          imageUrl: _getImageUrl(imageUrl),
          errorWidget: (context, url, error) => Image.asset(
            "assets/icons/no_icon.png",
          ),
        ),
      ),
    );
  }
}
