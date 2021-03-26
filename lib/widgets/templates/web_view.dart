import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:onlylive/widgets/atoms/toast.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen(this.url);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        backgroundColor: Colors.white,
        title: Text(
          url,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl(url);
        },
        onWebResourceError: (resource) => {
          Navigator.pop(context),
          showToast(message: "URLの読み込みに失敗しました"),
        },
      ),
    );
  }
}
