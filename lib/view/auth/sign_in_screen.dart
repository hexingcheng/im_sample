import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/vm/sign_in_vm.dart';
import 'package:onlylive/view/home/home_screen.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/hyper_link_text.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const SignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return ChangeNotifierProvider<SignInVM>(
      create: (context) => SignInVM(),
      builder: (context, ba) {
        final vm = context.read<SignInVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            leading: Close(context),
            title: "ログイン",
          ),
          body: SizedBox(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 34),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
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
                            color: context.select<SignInVM, bool>(
                                    (vm) => vm.validPasswordFormat)
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
                                if (!vm.validate(_formKey)) {
                                  await vm.login();
                                  Navigator.push(context, HomeScreen.route());
                                }
                              },
                              text: "ログイン",
                              textColor: Colors.white,
                              backgroundColor: context.select<SignInVM, bool>(
                                      (vm) => vm.isCommnicatedAPI)
                                  ? OnlyliveColor.lightPurple
                                  : OnlyliveColor.purple,
                              overlayColor: OnlyliveColor.lightPurple,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: HyperLinkText(
                            "パスワードをお忘れの方はこちら",
                            color: OnlyliveColor.purple,
                            pressedColor: OnlyliveColor.purple.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: HyperLinkText(
                        "電話番号変更後のログインはこちら",
                        color: OnlyliveColor.purple,
                        pressedColor: OnlyliveColor.purple.withOpacity(0.6),
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
