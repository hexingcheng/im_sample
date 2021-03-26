import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TalentCard extends StatelessWidget {
  TalentCard({
    required this.imageSrc,
    required this.name,
    required this.job,
    required this.imgHeight,
    this.label = const SizedBox.shrink(),
    this.filterColor = Colors.transparent,
  });
  final String imageSrc;
  final String name;
  final String job;
  final double imgHeight;
  final Color filterColor;
  Widget label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: imgHeight,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imageSrc,
                    fit: BoxFit.fitWidth,
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
          job,
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
