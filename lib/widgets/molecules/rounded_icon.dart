import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';

class RoundedIconWithGradientBorder extends StatelessWidget {
  const RoundedIconWithGradientBorder(
      {required this.imageUrl,
      this.width = 50,
      this.borderWidth = 3,
      this.borderRadius = BorderRadius.zero,
      Key? key})
      : super(key: key);
  final String imageUrl;
  final double width;
  final double borderWidth;
  final BorderRadius borderRadius;
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
            child: Imgix(
              context: context,
              width: width,
              height: width,
              imageUrl: imageUrl,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
