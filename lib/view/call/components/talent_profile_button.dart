import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';

class TalentActionButton extends StatelessWidget {
  const TalentActionButton(
      {required this.mainSquareImageUrl,
      required this.displayName,
      required this.introduction,
      Key? key})
      : super(key: key);
  final String mainSquareImageUrl;
  final String displayName;
  final String introduction;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              context: context,
              builder: (context2) => Container(
                height: 388,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Imgix(
                                context: context,
                                width: 50,
                                height: 50,
                                borderRadius: BorderRadius.circular(25),
                                imageUrl: mainSquareImageUrl,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              displayName,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: OnlyliveColor.darkPurple,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context2);
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                            color: OnlyliveColor.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Text(
                      "自己紹介",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: OnlyliveColor.darkPurple),
                    ),
                    const SizedBox(height: 24),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          introduction,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: OnlyliveColor.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: RoundedIconWithGradientBorder(
            imageUrl: mainSquareImageUrl,
            width: 63,
            borderWidth: 3,
          ),
        ),
        Positioned(
          top: -4,
          right: -2,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                gradient: OnlyliveColor.gradient,
              ),
              child: const Icon(
                Icons.call,
                size: 12.8,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
