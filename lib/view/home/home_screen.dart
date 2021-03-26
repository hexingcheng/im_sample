import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/view/splash_screen.dart';
import 'package:onlylive/view/home/vm/home_vm.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';
import 'package:onlylive/widgets/organisms/carousel.dart';
import 'package:onlylive/widgets/organisms/coming_soon_talent.dart';
import 'package:onlylive/widgets/organisms/now_talent_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeVM>(
      create: (context) => HomeVM(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            width: 128,
            height: 50,
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16),
                Container(
                  height: 128,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Carousel(
                    items: [
                      CarouselItem(
                          imageSrc: "assets/images/banner.png",
                          url: "https://cuee.co.jp"),
                      CarouselItem(
                          imageSrc: "assets/images/banner.png",
                          url: "https://cuee.co.jp"),
                      CarouselItem(
                          imageSrc: "assets/images/splash.png",
                          url: "https://cuee.co.jp")
                    ],
                    initialIndex: 1,
                  ),
                ),
                const SizedBox(height: 20),
                Selector<HomeVM, List<Talent>>(
                  selector: (context, state) => state.now,
                  builder: (context, talents, child) {
                    return NowTalentListView(
                      talents,
                    );
                  },
                ),
                const SizedBox(height: 10),
                Selector<HomeVM, List<Talent>>(
                  selector: (context, state) => state.comingSoon,
                  builder: (context, talents, child) {
                    return ComingSoonTalentListView(
                      talents,
                    );
                  },
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "人気急上昇中",
                          style: TextStyle(
                            color: Color(0xff5C7498),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Selector<HomeVM, List<Talent>>(
                          selector: (context, state) => state.hot,
                          builder: (context, hot, child) {
                            final contentsWidth =
                                MediaQuery.of(context).size.width - (40 + 11);
                            final cardWidth = contentsWidth / 2;
                            const itemHeight = 54; // 画像を除いたheight
                            final imgHeight = cardWidth * 1.33; //　画像一つのHeight
                            return GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              crossAxisSpacing: 11,
                              mainAxisSpacing: 24,
                              physics: const NeverScrollableScrollPhysics(),
                              childAspectRatio:
                                  cardWidth / (imgHeight + itemHeight),
                              children: List.generate(
                                hot.length,
                                (index) => TalentCard(
                                    imgHeight: imgHeight,
                                    imageSrc: hot[index].mainSquareImageUrl,
                                    name: hot[index].displayName,
                                    job: "hot[index].job,"),
                              ).toList(),
                            );
                          },
                        ),
                        const SizedBox(height: 32),
                        Center(
                          child: SizedBox(
                            width: 200,
                            height: 52,
                            child: RoundRectButton(
                              text: "もっとみる",
                              backgroundColor: const Color(0xffA3B7FF),
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.of(context)
                                    .push(SplashScreen.route());
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
