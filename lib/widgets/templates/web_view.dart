import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:onlylive/widgets/atoms/toast.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen(this.url, {this.title, Key? key}) : super(key: key);
  final String url;
  final String? title;

  static Route<dynamic> route(String url, {String title = ""}) =>
      MaterialPageRoute<dynamic>(
        builder: (_) => WebViewScreen(
          url,
          title: title,
        ),
        fullscreenDialog: true,
      );

  @override
  State<WebViewScreen> createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  double progresWidth = 0;
  double viewWidth = 0;
  Color progressColor = Colors.blue;

  void onProgress(int value) {
    final width = viewWidth * value * 0.01;
    super.setState(
      () {
        progresWidth = width;
        if (value == 100) {
          Future(
            () async => {
              await Future.delayed(const Duration(milliseconds: 500)),
              super.setState(() {
                progressColor = Colors.transparent;
              })
            },
          );
        }
      },
    );
  }

  void setViewWidth(BuildContext context) {
    viewWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    setViewWidth(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.title ?? "",
          style: const TextStyle(
            color: OnlyliveColor.black,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      body: Stack(
        children: [
          WebView(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              controller.loadUrl(widget.url);
            },
            onProgress: onProgress,
            onWebResourceError: (resource) => {
              Navigator.pop(context),
              showToast(message: "URLの読み込みに失敗しました"),
            },
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: progresWidth,
            height: 1,
            decoration: BoxDecoration(color: progressColor),
          ),
        ],
      ),
    );
  }
}
