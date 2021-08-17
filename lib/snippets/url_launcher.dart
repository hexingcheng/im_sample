import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:onlylive/snippets/toast.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(
    {required String url,
    ToastGravity gravity = ToastGravity.CENTER,
    Color color = Colors.black,
    double opacity = 0.8}) async {
  try {
    await launch(url);
  } catch (e) {
    showToast(message: "無効なURLです", gravity: ToastGravity.BOTTOM);
  }
}
