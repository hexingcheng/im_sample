import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/sms_auth_screen.dart';
import 'package:onlylive/view/auth/vm/sign_up_vm.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/simple_app_bar.dart';
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
    final _formKey = GlobalKey<FormState>();
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
            child: Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                      onChanged: (val) => vm.phoneNumber = val,
                      validator: vm.validatePhoneNumber,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 24),
                    OnlyliveTextFormField(
                      label: "パスワード",
                      onChanged: (val) => vm.password = val,
                      validator: vm.validatePassword,
                      passwordMode: true,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "半角のアルファベットと数字両方を含む6~29文字",
                      style: TextStyle(
                        color: context.select<SignUpVM, bool>(
                                (vm) => vm.validPasswordFormat)
                            ? OnlyliveColor.darkPurple
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 24),
                    OnlyliveTextFormField(
                      label: "パスワード（確認）",
                      onChanged: (val) => vm.passwordConfirmation = val,
                      validator: vm.validatePasswordConfirmation,
                      passwordMode: true,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "同じパスワードを入力",
                      style: TextStyle(
                        color: context.select<SignUpVM, bool>(
                                (vm) => vm.validPasswordConfirmation)
                            ? OnlyliveColor.darkPurple
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: SizedBox(
                        width: 335,
                        height: 52,
                        child: RoundRectButton(
                          onPressed: () async {
                            if (vm.validate(_formKey)) {
                              await vm.onSubmit();
                              Navigator.push(context, SMSAuthScreen.route());
                            }
                          },
                          text: "SMSに認証コードを送る",
                          textColor: Colors.white,
                          backgroundColor: context.select<SignUpVM, bool>(
                                  (vm) => vm.isCommnicatedAPI)
                              ? OnlyliveColor.lightPurple
                              : OnlyliveColor.purple,
                          overlayColor: OnlyliveColor.lightPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
