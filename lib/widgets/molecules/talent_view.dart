import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';

class TalentView extends StatefulWidget {
  const TalentView({required this.imgList, this.height = 500, this.decoration});
  final List<String> imgList;
  final double height;
  final BoxDecoration? decoration;

  @override
  _TalentViewState createState() => _TalentViewState();
}

class _TalentViewState extends State<TalentView> {
  int _current = 0;
  late CarouselController _carouselController;
  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: widget.height,
              viewportFraction: 1,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              }),
          items: widget.imgList
              .map(
                (item) => GestureDetector(
                  // onTapUp: (details) async {
                  //   final mobileWidth = MediaQuery.of(context).size.width;
                  //   final areaWidth = mobileWidth * 0.2;
                  //   final rightArea = mobileWidth - areaWidth;

                  //   if (areaWidth >= details.globalPosition.dx) {
                  //     setState(() async {
                  //       if (0 < _current) {
                  //         _current = _current - 1;
                  //       }
                  //     });
                  //     await _carouselController.previousPage();
                  //   } else if (rightArea <= details.globalPosition.dx) {
                  //     setState(() {
                  //       if (widget.imgList.length - 1 > _current) {
                  //         _current = _current + 1;
                  //       }
                  //     });
                  //     await _carouselController.nextPage(duration: Duration(seconds: 1));
                  //   }
                  // },
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Imgix(
                          width: 375,
                          height: 500,
                          context: context,
                          imageUrl: item,
                        ),
                      ),
                      Container(
                        decoration: widget.decoration,
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
        if (2 <= widget.imgList.length)
          Positioned(
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.imgList.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.6),
                  ),
                ),
              ).toList(),
            ),
          ),
      ],
    );
  }
}
