import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/extension/int_extension.dart';
import 'package:onlylive/view/call/components/extension_card.dart';

class ExtensionMenu extends StatelessWidget {
  const ExtensionMenu(
      {required this.onExtension,
      required this.secondsPerReservation,
      required this.itemCode,
      required this.balance,
      required this.validExtensionCount,
      Key? key})
      : super(key: key);
  final void Function(int) onExtension;
  final int secondsPerReservation;
  final ItemCode itemCode;
  final int balance;
  final int validExtensionCount;

  bool isEnableExtension(int rate) {
    return rate <= validExtensionCount && itemCode.coinNum() * rate <= balance;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 328,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
            child: Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "時間を延長する？",
                    style: TextStyle(
                      color: OnlyliveColor.darkPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.chevronDown,
                      color: OnlyliveColor.grey,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 0),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("assets/icons/coin.svg"),
              Text(
                balance.withConnma,
                style: const TextStyle(
                  color: OnlyliveColor.darkPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                3,
                (index) {
                  final rate = index + 1;
                  final isEnabled = isEnableExtension(rate);
                  return GestureDetector(
                    onTap: () {
                      if (isEnabled) {
                        onExtension(rate);
                        Navigator.pop(context);
                      }
                    },
                    onTapDown: (a) {},
                    child: ExtensionCard(
                      coinNum: itemCode.coinNum() * rate,
                      addSeconds: secondsPerReservation * rate,
                      assetName: "extension_x$rate",
                      isEnabled: isEnabled,
                    ),
                  );
                },
              ).toList()),
          const SizedBox(height: 16),
          const Text("合計３分まで延長できます",
              style: TextStyle(
                color: OnlyliveColor.grey,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
