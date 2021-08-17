import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/view/web_view_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Carousel extends StatefulWidget {
  const Carousel(
      {required this.items,
      required this.height,
      this.initialIndex = 0,
      Key? key})
      : super(key: key);
  final List<CarouselItem> items;
  final int initialIndex;
  final double height;

  @override
  _CarouselState createState() => _CarouselState();
}

GlobalKey carouselKey = GlobalKey();

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  double opacity = 1;

  double _getCarouselWidth() {
    final box = carouselKey.currentContext!.findRenderObject() as RenderBox?;
    return box!.size.width;
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setCurrentIndex(int index) {
    super.setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: carouselKey,
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: widget.height,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) => setCurrentIndex(index),
            autoPlay: true,
          ),
          items: widget.items
              .map(
                (item) => GestureDetector(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .push(WebViewScreen.route(
                    widget.items[currentIndex].url,
                    title: widget.items[currentIndex].title,
                  )),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Imgix(
                            context: context,
                            width: _getCarouselWidth(),
                            height: widget.height,
                            imageUrl: widget.items[currentIndex].imageUrl,
                          ),
                        ),
                        widget.items.length >= 2
                            ? Positioned(
                                bottom: 8,
                                right: 8,
                                child: Wrap(
                                  spacing: 4,
                                  children: List.generate(
                                    widget.items.length,
                                    (index) => Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: index == currentIndex
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class CarouselItem {
  const CarouselItem(
      {required this.imageUrl, required this.url, required this.title});

  final String imageUrl;
  final String url;
  final String title;
}
