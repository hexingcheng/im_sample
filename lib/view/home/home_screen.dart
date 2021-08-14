import 'package:flutter/material.dart';
import 'package:onlylive/view/home/ranking/ranking_view.dart';
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

  void calcPopularCardSize(BuildContext context) {
    // カードアス比 (縦 x 横) = 27 x 16
    // 画像アス比 (縦 x 横) = 4 x 3
    const sumMargin = 40 + 11;
    final contentsWidth = MediaQuery.of(context).size.width - sumMargin;
    _popularCardWidth = contentsWidth / 2;
    const itemHeight = 54; // 画像を除いたheight
    _popularCardImageHeight = _popularCardWidth + (_popularCardWidth / 3);
    _popularCardAspectRatio =
        _popularCardWidth / (_popularCardImageHeight + itemHeight);
  }

  static late double _popularCardAspectRatio;
  static late double _popularCardImageHeight;
  static late double _popularCardWidth;

  @override
  Widget build(BuildContext context) {
    calcPopularCardSize(context);
    return ChangeNotifierProvider<HomeVM>(
      create: (context) => HomeVM(),
      builder: (context, _) {
        final homeVM = context.watch<HomeVM>();
        return Scaffold(
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
          backgroundColor: Colors.white,
          body: RefreshIndicator(
            onRefresh: homeVM.updatesHomeList,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 100,
                        child: Carousel(
                          items: homeVM.features
                              .map(
                                (feature) => CarouselItem(
                                  imageUrl: feature.imageUrl,
                                  url: feature.webViewUrl,
                                  title: feature.title,
                                ),
                              )
                              .toList(),
                          height: 100,
                          initialIndex: 1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      NowFanmmetingListView(
                          homeVM.fanMeetings[HomeListType.now] ?? []),
                      const SizedBox(height: 10),
                      FutureFanMeetingListView(
                        homeVM.fanMeetings[HomeListType.future] ?? [],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "おすすめタレント",
                                style: TextStyle(
                                  color: Color(0xff5C7498),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 16),
                              GridView.count(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                crossAxisSpacing: 11,
                                mainAxisSpacing: 24,
                                physics: const NeverScrollableScrollPhysics(),
                                childAspectRatio: _popularCardAspectRatio,
                                children:
                                    homeVM.fanMeetings[HomeListType.popular]!
                                        .map(
                                          (fanMeeting) => TalentCard(
                                            imgHeight: _popularCardImageHeight,
                                            imgWidth: _popularCardWidth,
                                            imageUrl: fanMeeting
                                                .talent.mainSquareImageUrl,
                                            name: fanMeeting.talent.displayName,
                                            genre: fanMeeting.talent.genre[0],
                                          ),
                                        )
                                        .toList(),
                              ),
                              const SizedBox(height: 24),
                              Center(
                                child: SizedBox(
                                  width: 200,
                                  height: 52,
                                  child: RoundRectButton(
                                    text: "もっとみる",
                                    backgroundColor: const Color(0xffA3B7FF),
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                      RankingView(
                        ranking: homeVM.ranking,
                        loading: homeVM.loading[HomeLoadingType.ranking]!,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
