import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/reservation/vm/reservation_vm.dart';
import 'package:onlylive/widgets/atoms/call_icon.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/talent_view.dart';
import 'package:onlylive/widgets/molecules/simple_app_bar.dart';
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
            child: vm.existReservation
                ? LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
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
                                  padding: EdgeInsets.only(bottom: 10),
                                  color: Colors.white,
                                ),
                                TalentView(
                                  height: viewHeight,
                                  imgList: vm.talentImgList,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.black.withOpacity(0.3),
                                        Colors.black.withOpacity(0)
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: viewHeight * 0.95,
                                  child: Container(
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
                                      SizedBox(height: 2),
                                      Text(
                                        "#${vm.hashTag}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                      SizedBox(height: 14),
                                      SizedBox(
                                        width: 295,
                                        height: 438,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
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
                                                      Container(
                                                        child: Center(
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                "assets/images/splash.png",
                                                                width: 52,
                                                                height: 52,
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
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
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                        text: " あと１人",
                                                        style: TextStyle(
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
                                                SizedBox(height: 4),
                                                Text(
                                                  "30秒",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                SizedBox(height: 16),
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
                                                SizedBox(height: 4),
                                                Text(
                                                  "1,000 / 30秒",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color:
                                                            OnlyliveColor.grey,
                                                      ),
                                                ),
                                                SizedBox(height: 32),
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
                  )
                : const Padding(
                    padding: const EdgeInsets.only(top: 153),
                    child: NoCallReservation(),
                  ),
          ),
        );
      },
    );
  }
}

class NoCallReservation extends StatelessWidget {
  const NoCallReservation();

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
                backgroundColor: Color(0xffA3B7FF),
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
