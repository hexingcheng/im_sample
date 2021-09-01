import 'package:flutter/material.dart';
import 'package:onlylive/snippets/mail.dart';
import 'package:onlylive/snippets/platform_dialog.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/vm/sign_in_vm.dart';
import 'package:onlylive/view/home/home_screen.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/hyper_link_text.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
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
          body: Stack(children: <Widget>[
            SingleChildScrollView(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OnlyliveTextFormField(
                              label: "電話番号",
                              onChanged: vm.onChangedPhoneNumber,
                              hintText: "08012345678",
                              hasValid: context.select<SignInVM, bool>(
                                  (vm) => vm.isValidPhoneNumber),
                              noteText: "お使いのスマーフとフォンの電話番号を入力してください",
                            ),
                            const SizedBox(height: 24),
                            OnlyliveTextFormField(
                              label: "パスワード",
                              onChanged: vm.onChagePassword,
                              passwordMode: true,
                              hintText: "Abcd01",
                              hasValid: context.select<SignInVM, bool>(
                                  (vm) => vm.isValidPassword),
                              noteText: "半角のアルファベットと数字両方を含む6~20文字",
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: SizedBox(
                            width: 335,
                            height: 52,
                            child: RoundRectButton(
                              isEnabled: vm.isEnableButton,
                              onPressed: () async {
                                if (vm.isEnableButton) {
                                  final result = await vm.signIn();
                                  if (result == SignInResult.success) {
                                    Navigator.push(context, HomeScreen.route());
                                    return;
                                  }
                                  showPlatformDialog(
                                    context,
                                    DialogOptions(
                                      title: "ログインできません",
                                      content: vm.errorMessage[result] ?? "",
                                      actions: const <DialogActions>[
                                        DialogActions(
                                            text: "OK",
                                            onPressed: Navigator.pop)
                                      ],
                                    ),
                                  );
                                }
                              },
                              text: "ログイン",
                              textColor: Colors.white,
                              backgroundColor: context.select<SignInVM, bool>(
                                      (vm) => vm.isEnableButton)
                                  ? OnlyliveColor.purple
                                  : OnlyliveColor.lightPurple,
                              overlayColor: OnlyliveColor.lightPurple,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: HyperLinkText(
                            "お問い合わせ",
                            onTap: () => openMailApp(),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Loading(context.select<SignInVM, bool>((vm) => vm.isLoading)),
          ]),
        );
      },
    );
  }
}
