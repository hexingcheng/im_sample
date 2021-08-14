import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';

class TalentCard extends StatelessWidget {
  const TalentCard(
      {required this.imageUrl,
      required this.name,
      required this.genre,
      required this.imgWidth,
      required this.imgHeight,
      this.label = const SizedBox.shrink(),
      this.filterColor = Colors.transparent,
      Key? key})
      : super(key: key);
  final String imageUrl;
  final String name;
  final Genre genre;
  final double imgHeight;
  final double imgWidth;
  final Color filterColor;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: imgHeight,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Imgix(
                    context: context,
                    imageUrl: imageUrl,
                    width: imgWidth,
                    height: imgHeight,
                  ),
                ),
              ),
              SizedBox.expand(
                child: ColoredBox(color: filterColor),
              ),
              label,
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(
            color: Color(0xff5C7498),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          genre.string(),
          style: const TextStyle(
            color: Color(0xffA2ACBB),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
