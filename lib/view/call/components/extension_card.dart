import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/extension/int_extension.dart';
import 'package:onlylive/theme/theme.dart';

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

  late final int seconds;
  late final int minutes;

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
        if (!isEnabled)
          Container(
              height: 134, width: 100, color: Colors.white.withOpacity(0.6))
      ],
    );
  }
}
