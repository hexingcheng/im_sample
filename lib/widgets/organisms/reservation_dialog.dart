import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/web_view_screen.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/widgets/atoms/hyper_link_text.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/extension/int_extension.dart';

class ReservationDialog extends StatelessWidget {
  ReservationDialog(
      {required this.style,
      required this.imageUrl,
      required this.displayName,
      required this.balance,
      required this.secondsPerReserved,
      required this.unitCoin,
      required this.waitingFanNum,
      required this.onPressedButton,
      Key? key})
      : super(key: key) {
    setProperty();
  }

  final FanMeetingStyle style;
  final String imageUrl;
  final String displayName;
  final int secondsPerReserved;
  final int unitCoin;
  final int waitingFanNum;
  final int balance;
  final void Function() onPressedButton;

  static double dialogHeight = 394;
  static String buttonText = "通話予約へ";
  static String hyperLinkText = "コイン購入";
  static String hyperLink = "https://onlylive.jp/shop";

  void setProperty() {
    if (FanMeetingStyle.serial == style) {
      dialogHeight = 336;
      buttonText = "通話予約する";
      hyperLinkText = "通話方法を確認";
      hyperLink = "https://onlylive.tokyo/howto-call";
    }
  }

  @override
  Widget build(BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 295,
          height: dialogHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 32,
          ),
          child: Column(
            children: <Widget>[
              const Text(
                "通話を予約しよう！",
                style: TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Imgix(
                context: context,
                imageUrl: imageUrl,
                width: 64,
                height: 64,
                borderRadius: BorderRadius.circular(100),
              ),
              const SizedBox(height: 10),
              Text(
                displayName,
                style: const TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "約20分待ち",
                style: TextStyle(
                  color: OnlyliveColor.purple,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              style == FanMeetingStyle.regular
                  ? Column(
                      children: <Widget>[
                        const SizedBox(height: 10),
                        const ReservationItem(
                          header: "1通話の価格",
                          content: "${100} / ${30}分",
                        ),
                        const SizedBox(height: 5),
                        ReservationItem(
                          header: "所持コイン",
                          content: balance.withConnma,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 20),
              SizedBox(
                width: 158,
                height: 52,
                child: GradientButton(
                  onPressed: onPressedButton,
                  text: buttonText,
                  textColor: Colors.white,
                  colors: OnlyliveColor.gradient.colors,
                ),
              ),
              const SizedBox(height: 14),
              HyperLinkText(
                hyperLinkText,
                onTap: () => Navigator.push(
                  context,
                  WebViewScreen.route(hyperLink, title: hyperLinkText),
                ),
              )
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
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/coin.svg",
                width: 16,
                height: 16,
              ),
              const SizedBox(width: 10),
              Text(
                content,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: OnlyliveColor.darkPurple),
              ),
            ],
          )
        ],
      );
}
