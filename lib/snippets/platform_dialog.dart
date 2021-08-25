import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

void showPlatformDialog(BuildContext context, DialogOptions dialogOptions) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(dialogOptions.title),
        content: Text(dialogOptions.content),
        actions: dialogOptions.actions
            .map((v) => CupertinoDialogAction(
                  onPressed: () => v.onPressed(context),
                  child: Text(v.text),
                ))
            .toList(),
      ),
    );
  } else {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          dialogOptions.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          dialogOptions.content,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: dialogOptions.actions
            .map((v) => MaterialDialogAction(
                  text: v.text,
                  onPressed: () => v.onPressed(context),
                ))
            .toList(),
      ),
    );
  }
}

class MaterialDialogAction extends StatelessWidget {
  const MaterialDialogAction(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(text,
            style: TextStyle(fontSize: 16, color: OnlyliveColor.purple)),
      ),
    );
  }
}

class DialogOptions {
  DialogOptions({
    required this.title,
    required this.actions,
    required this.content,
  });
  String title;
  String content;
  List<DialogActions> actions;
}

class DialogActions {
  const DialogActions({required this.text, required this.onPressed});
  final String text;
  final void Function(BuildContext dialogContext) onPressed;
}
