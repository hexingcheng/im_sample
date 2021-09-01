import 'package:flutter/material.dart';
import 'package:onlylive/snippets/platform_dialog.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/vm/sms_auth_vm.dart';
import 'package:onlylive/view/home/home_screen.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class SMSAuthScreen extends StatelessWidget {
  const SMSAuthScreen(
      {required this.phoneNumber, required this.password, Key? key})
      : super(key: key);
  final String phoneNumber;
  final String password;

  static Route<dynamic> route(
      {required String phoneNumber, required String password}) {
    return MaterialPageRoute<dynamic>(
      builder: (_) =>
          SMSAuthScreen(phoneNumber: phoneNumber, password: password),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SMSAuthVM>(
      create: (context) => SMSAuthVM(
        phoneNumber: phoneNumber,
        password: password,
      ),
      builder: (context, ba) {
        final vm = context.read<SMSAuthVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            leading: Back(context),
            title: "認証番号",
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "携帯電話に届いた6桁の数字を入力してください",
                        style: TextStyle(
                          color: OnlyliveColor.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 24),
                      OnlyliveTextFormField(
                        label: "認証番号",
                        onChanged: (value) async {
                          final result = await vm.onChangeSmsCode(value);
                          switch (result) {
                            case SignUpResult.success:
                              Navigator.push(context, HomeScreen.route());
                              break;
                            case SignUpResult.existPhoneNumber:
                              showPlatformDialog(
                                context,
                                DialogOptions(
                                  title: "登録できません",
                                  content: "すでに登録されています",
                                  actions: const <DialogActions>[
                                    DialogActions(
                                      text: "OK",
                                      onPressed: Navigator.pop,
                                    ),
                                  ],
                                ),
                              );
                              break;
                            case SignUpResult.unknown:
                              break;
                          }
                        },
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "認証番号が送られない場合",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: OnlyliveColor.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: vm.resendSMSCode,
                        child: Text(
                          "もう一度SMSを送信する",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: context.select<SMSAuthVM, bool>(
                                      (vm) => vm.isResendingSMSCode)
                                  ? OnlyliveColor.purple.withOpacity(0.6)
                                  : OnlyliveColor.purple),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              Loading(context.select<SMSAuthVM, bool>((vm) => vm.isLoading)),
            ],
          ),
        );
      },
    );
  }
}
