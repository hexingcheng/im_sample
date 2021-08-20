import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/vm/sms_auth_vm.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class SMSAuthScreen extends StatelessWidget {
  const SMSAuthScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const SMSAuthScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return ChangeNotifierProvider<SMSAuthVM>(
      create: (context) => SMSAuthVM(),
      builder: (context, ba) {
        final vm = context.read<SMSAuthVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            leading: Back(context),
            title: "認証番号",
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
                      onChanged: (val) => vm.authCode = val,
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
          ),
        );
      },
    );
  }
}
