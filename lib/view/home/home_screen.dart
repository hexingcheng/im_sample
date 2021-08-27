import 'package:flutter/material.dart';
import 'package:onlylive/view/home/components/ranking/ranking_view.dart';
import 'package:onlylive/view/home/components/talent_list/future_talent_list_view.dart';
import 'package:onlylive/view/home/components/talent_list/now_talent_list_view.dart';
import 'package:onlylive/view/home/components/talent_list/topic_talent_grid_view.dart';
import 'package:onlylive/view/home/vm/home_vm.dart';
import 'package:onlylive/widgets/organisms/carousel.dart';
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
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: NowTalentListView(homeVM
                            .fanMeetingAndReserved[HomeListType.now]!
                            .map((e) => e.fanMeeting)
                            .toList()),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: FutureTalentListView(homeVM
                            .fanMeetingAndReserved[HomeListType.future]!
                            .map((e) => e.fanMeeting)
                            .toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                            child: TopicTalentGridView(homeVM
                                .fanMeetingAndReserved[HomeListType.popular]!
                                .map((e) => e.fanMeeting)
                                .toList())),
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
