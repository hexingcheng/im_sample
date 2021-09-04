import 'package:flutter/material.dart';
import 'package:onlylive/snippets/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class SNSIcon extends StatefulWidget {
  const SNSIcon({required this.url, required this.icon, Key? kye})
      : super(key: kye);
  final String url;
  final Widget icon;

  @override
  State<SNSIcon> createState() => _SNSIconState();
}

class _SNSIconState extends State<SNSIcon> {
  Future<void> isEnableUrl() async {
    final _isEnable = await canLaunch(widget.url);
    setState(() {
      isEnable = _isEnable;
    });
  }

  @override
  void initState() {
    isEnableUrl();
    super.initState();
  }

  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    if (isEnable) {
      return GestureDetector(
          onTap: () => openUrl(url: widget.url), child: widget.icon);
    } else {
      return const SizedBox.shrink();
    }
  }
}
