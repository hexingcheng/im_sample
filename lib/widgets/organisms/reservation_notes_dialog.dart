import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/widgets/atoms/hyper_link_text.dart';

class ReservationNotesDialog extends StatelessWidget {
  ReservationNotesDialog(
      {required this.onPressedButton,
      required this.talentImageUri,
      required this.style,
      Key? key})
      : super(key: key) {
    setProperty();
  }
  final void Function() onPressedButton;
  final String talentImageUri;
  final FanMeetingStyle style;

  static double dialogHeight = 295;
  static String detail =
      "通話開始後にコインが消費されます。\n通話開始後はコインの追加購入はできません。\n通常予約とキャンペーン予約は\n同時予約できませんのでご了承ください";

  void setProperty() {
    if (FanMeetingStyle.serial == style) {
      dialogHeight = 216;
      detail = "通常予約とキャンペーン予約は\n同時予約できませんのでご了承ください";
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          child: Column(
            children: <Widget>[
              const Text(
                "予約前に必ずご確認ください",
                style: TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                detail,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: OnlyliveColor.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
              ),
              const SizedBox(height: 13),
              FanMeetingStyle.regular == style
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: HyperLinkText("キャンペーン予約について", onTap: () => {}),
                    )
                  : const SizedBox.shrink(),
              SizedBox(
                width: 158,
                height: 52,
                child: GradientButton(
                  onPressed: onPressedButton,
                  text: "予約する",
                  textColor: Colors.white,
                  colors: OnlyliveColor.gradient.colors,
                ),
              ),
            ],
          ),
        ),
      );
}
