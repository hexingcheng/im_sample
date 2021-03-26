import 'dart:io';
import 'package:flutter/material.dart';
import 'package:onlylive/widgets/templates/web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Carousel extends StatefulWidget {
  const Carousel({required this.items, this.initialIndex = 0});
  final List<CarouselItem> items;
  final int initialIndex;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  double opacity = 1;
  final duration = const Duration(seconds: 1);
  final keepTime = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    Future(() async {
      await Future.delayed(const Duration(seconds: 3));
      changeContents();
    });
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setCurrentIndex() {
    if (widget.items.length - 1 == currentIndex) {
      currentIndex = 0;
    } else {
      currentIndex += 1;
    }
  }

  Future changeContents() async {
    if (mounted) {
      super.setState(() {
        opacity = 0;
      });
    }
    await Future.delayed(duration);
    if (mounted) {
      super.setState(() {
        opacity = 1;
        setCurrentIndex();
      });
    }
    await Future.delayed(keepTime);
    await changeContents();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: AnimatedOpacity(
        opacity: opacity,
        duration: duration,
        child: Center(
          child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                widget.items[currentIndex].imageSrc,
                fit: BoxFit.fitWidth,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        WebViewScreen(widget.items[currentIndex].url)),
              )
            },
          ),
        ),
      ),
    );
  }
}

class CarouselItem {
  const CarouselItem({required this.imageSrc, required this.url});

  final String imageSrc;
  final String url;
}
