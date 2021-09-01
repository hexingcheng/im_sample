import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/sms_auth_screen.dart';
import 'package:onlylive/view/auth/vm/sign_up_vm.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignUpVM>(
      create: (context) => SignUpVM(),
      builder: (context, ba) {
        final vm = context.read<SignUpVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            leading: Close(context),
            title: "新規登録",
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "安全な取引のため、携帯電話のSMS（ショートメッセージサービス）を利用して認証を行います",
                    style: TextStyle(
                      color: OnlyliveColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 24),
                  OnlyliveTextFormField(
                    label: "電話番号",
                    onChanged: vm.onChagePhoneNumber,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 24),
                  OnlyliveTextFormField(
                      label: "パスワード",
                      onChanged: vm.onChagePassword,
                      passwordMode: true,
                      noteText: "半角のアルファベットと数字両方を含む6~29文字",
                      hasValid: context
                          .select<SignUpVM, bool>((vm) => vm.isValidPassword)),
                  const SizedBox(height: 8),
                  const SizedBox(height: 24),
                  OnlyliveTextFormField(
                      label: "パスワード（確認）",
                      onChanged: vm.onChagePasswordConfirmation,
                      passwordMode: true,
                      noteText: "同じパスワードを入力",
                      hasValid: context.select<SignUpVM, bool>(
                          (vm) => vm.isValidPasswordConfirmation)),
                  const SizedBox(height: 24),
                  Center(
                    child: SizedBox(
                      width: 335,
                      height: 52,
                      child: RoundRectButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              SMSAuthScreen.route(
                                  phoneNumber: vm.phoneNumber,
                                  password: vm.password));
                        },
                        text: "SMSに認証コードを送る",
                        textColor: Colors.white,
                        isEnabled: context
                            .select<SignUpVM, bool>((vm) => vm.isEnableButton),
                        backgroundColor: OnlyliveColor.purple,
                        disableColor: OnlyliveColor.lightPurple,
                        overlayColor: OnlyliveColor.lightPurple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
