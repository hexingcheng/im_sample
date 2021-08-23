import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/check.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';

class CompleteReservationDialog extends StatelessWidget {
  const CompleteReservationDialog(this.talentImageUri, {Key? key})
      : super(key: key);
  final String talentImageUri;
  @override
  Widget build(BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 295,
          height: 348,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset(
                        "assets/icons/twinkle.svg",
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          RoundedIconWithGradientBorder(
                            imageUrl: talentImageUri,
                            width: 140,
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: Check(),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        "assets/icons/twinkle2.svg",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "予約完了!",
                style: TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "あなたの順番になると着信がくるよ",
                style: TextStyle(
                  color: OnlyliveColor.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 200,
                height: 52,
                child: RoundRectButton(
                  text: "着信を待つ",
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  backgroundColor: OnlyliveColor.purple,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
}

class ReservationItem extends StatelessWidget {
  const ReservationItem({required this.header, required this.content, Key? key})
      : super(key: key);
  final String header;
  final String content;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            header,
            style: const TextStyle(
                color: OnlyliveColor.darkPurple,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/coin.svg",
                width: 16,
                height: 16,
              ),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      );
}
