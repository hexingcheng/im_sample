import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class RoundedIconWithGradientBorder extends StatelessWidget {
  const RoundedIconWithGradientBorder(
      {required this.imageUrl, this.width = 50, this.borderWidth = 3, Key? key})
      : super(key: key);
  final String imageUrl;
  final double width;
  final double borderWidth;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: width + borderWidth * 2,
        height: width + borderWidth * 2,
        decoration: const BoxDecoration(
          color: Colors.blue,
          gradient: OnlyliveColor.gradient,
        ),
        child: Center(
          child: ClipOval(
            clipBehavior: Clip.hardEdge,
            child: CachedNetworkImage(
              width: width,
              height: width,
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
