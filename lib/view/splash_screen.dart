import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/sign_up_screen.dart';
import 'package:onlylive/view/call/call_screen.dart';
import 'package:onlylive/view/auth/sign_in_screen.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';

class SplashScreen extends StatelessWidget {
  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (_) => SplashScreen());
  const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/splash.png",
              fit: BoxFit.fill,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.8),
                  ],
                  stops: const [0.4, 1.0],
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 60),
            width: 215,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffA3B7FF).withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 50,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: RoundRectButton(
              text: "はじめる",
              onPressed: () async {
                const isLogined = false;
                if (!isLogined) {
                  Navigator.push(
                      context,
                      CallScreen.route(CallTransaction(
                        callUUID: "",
                        talentDisplayName: "callerName",
                        talentUUID: "callerId",
                        fanMeetingID: 0,
                        reservationID: 0,
                        itemCode: "",
                        fanUUID: "",
                        balance: 0,
                        updatedAt: DateTime(0),
                      )));
                } else {
                  showDialog(
                    context: context,
                    builder: (c) => SimpleDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 32),
                      title: Center(
                        child: const Text(
                          "アカウントを登録しよう！",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: OnlyliveColor.darkPurple,
                          ),
                        ),
                      ),
                      children: <Widget>[
                        Column(
                          children: [
                            const Text(
                              "SMSを利用して簡単に登録可能です",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: OnlyliveColor.grey,
                              ),
                            ),
                            const SizedBox(height: 24),
                            SizedBox(
                              height: 52,
                              width: 200,
                              child: GradientButton(
                                onPressed: () => Navigator.push(
                                    context, SignUpScreen.route()),
                                text: "新規登録",
                                colors: const <Color>[
                                  Color(0xff8EC5FC),
                                  Color(0xffE0C3FC),
                                ],
                                textColor: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Center(
                              child: RichText(
                                strutStyle: const StrutStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                                text: TextSpan(
                                    text: "アカウントをお持ちの方は",
                                    style: TextStyle(
                                      color: OnlyliveColor.darkPurple,
                                    ),
                                    children: [
                                      TextSpan(
                                          style: TextStyle(
                                            color: OnlyliveColor.purple,
                                          ),
                                          text: "ログイン",
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => Navigator.push(
                                                context, SignInScreen.route())),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }
              },
              overlayColor: OnlyliveColor.purple.withOpacity(0.1),
              textColor: OnlyliveColor.purple,
            ),
          ),
        ),
      ],
    );
  }
}
