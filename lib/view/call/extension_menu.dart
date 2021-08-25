import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/extension/int_extension.dart';
import 'package:onlylive/view/call/vm/call_vm.dart';
import 'package:provider/provider.dart';

class ExtensionMenu extends StatelessWidget {
  const ExtensionMenu(
      {required this.onExtension,
      required this.fanMeeting,
      required this.balance,
      required this.validExtensionCount,
      Key? key})
      : super(key: key);
  final void Function(int) onExtension;
  final FanMeeting fanMeeting;
  final int balance;
  final int validExtensionCount;

  bool isEnableExtension(int rate) {
    return rate <= validExtensionCount &&
        fanMeeting.itemCode.coinNum() * rate <= balance;
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
                        coinNum: fanMeeting.itemCode.coinNum() * rate,
                        addSeconds: fanMeeting.secondsPerReservation * rate,
                        assetName: "extension_x$rate",
                        isEnabled: isEnabled),
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

class ExtensionCard extends StatelessWidget {
  ExtensionCard(
      {required this.assetName,
      required this.addSeconds,
      required this.coinNum,
      required this.isEnabled,
      Key? key})
      : super(key: key) {
    minutes = addSeconds.convertSecondsToMinutes;
    seconds = addSeconds - Duration(minutes: minutes).inSeconds;
  }
  final String assetName;
  final int addSeconds;
  final int coinNum;
  final bool isEnabled;

  late int seconds;
  late int minutes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 4),
                color: OnlyliveColor.purple.withOpacity(0.2),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 19),
              Image.asset("assets/icons/$assetName.png"),
              const SizedBox(height: 13),
              Text(
                "+ ${minutes.zeroFill(2)}:${seconds.zeroFill(2)}",
                style: const TextStyle(
                  color: OnlyliveColor.purple,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                height: 32,
                decoration: const BoxDecoration(
                  gradient: OnlyliveColor.gradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/coin.svg"),
                    const SizedBox(width: 4),
                    Text(
                      coinNum.withConnma,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        !isEnabled
            ? Container(
                height: 134, width: 100, color: Colors.white.withOpacity(0.6))
            : SizedBox.shrink(),
      ],
    );
  }
}
