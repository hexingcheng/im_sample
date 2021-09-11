import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:onlylive/snippets/platform_dialog.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/auth/vm/register_profile_vm.dart';
import 'package:onlylive/view/web_view_screen.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/loading.dart';
import 'package:onlylive/widgets/atoms/onlylive_text_from_field.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class RegisterProfileScreen extends StatelessWidget {
  const RegisterProfileScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const RegisterProfileScreen(),
      fullscreenDialog: true,
    );
  }

  String idNoteText(String id, bool isDuplicated) {
    if (isDuplicated) {
      return "このIDは既に使われています";
    } else if (!isDuplicated && id != "") {
      return "このIDは使用可能です";
    }
    return "半角英数字";
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterProfileVM>(
      create: (context) => RegisterProfileVM(),
      builder: (context, _) {
        final vm = context.read<RegisterProfileVM>();
        final isDuplicatedId =
            context.select<RegisterProfileVM, bool>((vm) => vm.isDuplicatedId);

        return Stack(
          children: [
            Scaffold(
              appBar: SimpleAppBar(
                leading: Close(context),
                title: "プロフィール作成",
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 40),
                      SizedBox(
                        width: 140,
                        height: 140,
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              "assets/icons/no_icon.png",
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset("assets/icons/add.svg"))
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      OnlyliveTextFormField(
                        label: "名前",
                        hintText: "名前を入力",
                        onChanged: vm.onChageName,
                        maxLength: 10,
                      ),
                      const SizedBox(height: 24),
                      OnlyliveTextFormField(
                        label: "ユーザーID",
                        hintText: "ユーザーIDを入力",
                        maxLength: 20,
                        onChanged: vm.onChageId,
                        unFocus: vm.checkDuplicate,
                        noteText: idNoteText(
                          context
                              .select<RegisterProfileVM, String>((vm) => vm.id),
                          isDuplicatedId,
                        ),
                        hasValid: context.select<RegisterProfileVM, bool>(
                            (vm) => vm.isValidId),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "生年月日",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: OnlyliveColor.darkPurple,
                              ),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () async {
                                final now = DateTime.now();
                                final selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: vm.birth,
                                  firstDate: DateTime(now.year - 100),
                                  lastDate: now,
                                  initialEntryMode: DatePickerEntryMode.input,
                                  locale: Locale(vm.languageCode),
                                );
                                if (selectedDate != null) {
                                  vm.onChageBirth(selectedDate);
                                }
                              },
                              child: SizedBox(
                                width: double.infinity,
                                child: context.select<RegisterProfileVM, bool>(
                                        (vm) => vm.selectedBirth)
                                    ? Text(
                                        DateFormat.yMd(vm.languageCode).format(
                                            context.select<RegisterProfileVM,
                                                DateTime>((vm) => vm.birth)),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: OnlyliveColor.darkPurple,
                                        ),
                                      )
                                    : const Text(
                                        "1999/01/01",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: OnlyliveColor.grey,
                                        ),
                                      ),
                              ),
                            ),
                            const Divider(
                              color: OnlyliveColor.lightPurple,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: SizedBox(
                          width: 335,
                          height: 52,
                          child: RoundRectButton(
                            onPressed: () async {
                              final result = await vm.updateFan();
                              var title = "";
                              var content = "";
                              switch (result) {
                                case RegisterProfileResult.success:
                                  Navigator.pop(context);
                                  return;
                                case RegisterProfileResult.duplicatedId:
                                  title = "このIDはすでに使用されています";
                                  content =
                                      "このIDはすでに利用されているため登録できません。入力し直してください";
                                  return;
                                case RegisterProfileResult.unknown:
                                  title = "ネットワークエラー";
                                  content = "通信環境をお確かのため、時間をおいて再度お試しください";
                              }

                              showPlatformDialog(
                                  context,
                                  DialogOptions(
                                      title: title,
                                      actions: <DialogActions>[
                                        const DialogActions(
                                            text: "OK",
                                            onPressed: Navigator.pop),
                                      ],
                                      content: content));
                              return;
                            },
                            text: "新規登録",
                            textColor: Colors.white,
                            isEnabled: context.select<RegisterProfileVM, bool>(
                                (vm) => vm.isEnableButton),
                            backgroundColor: OnlyliveColor.purple,
                            disableBackgroundColor: OnlyliveColor.lightPurple,
                            overlayColor: OnlyliveColor.lightPurple,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 283,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "新規登録で",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: OnlyliveColor.grey,
                            ),
                            children: [
                              TextSpan(
                                  style: const TextStyle(
                                    color: OnlyliveColor.purple,
                                  ),
                                  text: "利用規約",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.push(
                                        context,
                                        WebViewScreen.route(
                                            "https://onlylive.tokyo/terms",
                                            title: "利用規約"))),
                              const TextSpan(
                                text: "および",
                              ),
                              TextSpan(
                                style: const TextStyle(
                                  color: OnlyliveColor.purple,
                                ),
                                text: "プライバシーポリシー",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                      context,
                                      WebViewScreen.route(
                                          "https://onlylive.tokyo/privacy",
                                          title: "プライバシーポリシー")),
                              ),
                              const TextSpan(
                                text: "に同意したものとします",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Loading(
                context.select<RegisterProfileVM, bool>((vm) => vm.isLoading))
          ],
        );
      },
    );
  }
}
