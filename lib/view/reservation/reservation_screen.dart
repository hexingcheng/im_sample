import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/reservation/vm/reservation_vm.dart';
import 'package:onlylive/widgets/atoms/call_icon.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/rounded_icon.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class CallReservationScreen extends StatelessWidget {
  const CallReservationScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() => MaterialPageRoute<dynamic>(
        builder: (_) => const CallReservationScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReservationVM>(
      create: (context) => ReservationVM(),
      builder: (context, child) {
        final vm = context.read<ReservationVM>();
        final viewHeight = MediaQuery.of(context).size.height * 0.62;
        const overlapping = 27;
        const bottomContentHeight = 475;
        final screenHeight =
            (viewHeight + bottomContentHeight) - overlapping * 2;
        return Scaffold(
          appBar: const SimpleAppBar(title: "通話予約"),
          body: SafeArea(
            child: FutureBuilder(
              future: vm.initState(),
              builder: (context, _) {
                if (vm.initilized && vm.existReservation) {
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.topCenter,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: screenHeight,
                                  padding: const EdgeInsets.only(bottom: 10),
                                  color: Colors.white,
                                ),
                                Imgix(
                                    context: context,
                                    imageUrl: vm.talentImageUrl,
                                    width: double.infinity,
                                    height: 475),
                                Positioned(
                                  top: viewHeight * 0.95,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 475,
                                  ),
                                ),
                                Positioned(
                                  top: constraints.maxHeight - 262,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 108,
                                        height: 28,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: OnlyliveColor.purple),
                                        child: Center(
                                          child: Text(
                                            "着信待ち",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        "#${vm.talentDisplayName}とonlylive",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                      const SizedBox(height: 14),
                                      SizedBox(
                                        width: 295,
                                        height: 438,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 32),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "他のユーザーと通話中...",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                        color: OnlyliveColor
                                                            .purple,
                                                      ),
                                                ),
                                                Container(
                                                  width: 57,
                                                  height: 57,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    gradient:
                                                        OnlyliveColor.gradient,
                                                  ),
                                                  margin: const EdgeInsets
                                                      .symmetric(vertical: 16),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        child: Center(
                                                          child:
                                                              RoundedIconWithGradientBorder(
                                                            imageUrl: vm
                                                                .talentImageUrl,
                                                            width: 57,
                                                          ),
                                                        ),
                                                      ),
                                                      const Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: CallIcon(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "あなたへの着信まで",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2!
                                                        .copyWith(
                                                          color: OnlyliveColor
                                                              .grey,
                                                        ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text:
                                                            " あと${vm.waitNum}",
                                                        style: const TextStyle(
                                                          color: OnlyliveColor
                                                              .purple,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 21),
                                                const Divider(),
                                                const SizedBox(height: 21),
                                                Text(
                                                  "通話時間",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  "${vm.secondsPerReservation}秒",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                const SizedBox(height: 16),
                                                Text(
                                                  "延長するには",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  "${vm.coinNum} / ${vm.secondsPerReservation}秒",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                const SizedBox(height: 32),
                                                SizedBox(
                                                  width: 215,
                                                  height: 52,
                                                  child: RoundRectButton(
                                                    onPressed: () {},
                                                    text: "通話方法を確認",
                                                    backgroundColor:
                                                        OnlyliveColor.purple,
                                                    textColor: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.only(top: 153),
                    child: NoCallReservation(),
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}

class NoCallReservation extends StatelessWidget {
  const NoCallReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              SvgPicture.asset("assets/icons/phone.svg"),
              const SizedBox(height: 20),
              Text(
                "現在の予約はありません",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: OnlyliveColor.darkPurple,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                "通話予約が完了すると\n予約チケットが確認できます",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: OnlyliveColor.grey,
                      height: 1.8,
                    ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 215,
              height: 52,
              margin: const EdgeInsets.only(bottom: 30),
              child: RoundRectButton(
                onPressed: () => {},
                text: "通話方法を確認",
                backgroundColor: const Color(0xffA3B7FF),
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
