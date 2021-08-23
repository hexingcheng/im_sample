import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/home/components/ranking/ranking_view.dart';
import 'package:onlylive/view/home/components/talent_list/future_talent_list_view.dart';
import 'package:onlylive/view/home/components/talent_list/now_talent_list_view.dart';
import 'package:onlylive/view/home/components/talent_list/topic_talent_grid_view.dart';
import 'package:onlylive/view/home/vm/home_vm.dart';
import 'package:onlylive/view/web_view_screen.dart';
import 'package:onlylive/widgets/atoms/gradient_button.dart';
import 'package:onlylive/widgets/atoms/hyper_link_text.dart';
import 'package:onlylive/widgets/atoms/imgix.dart';
import 'package:onlylive/widgets/organisms/carousel.dart';
import 'package:onlylive/widgets/organisms/complete_reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_dialog.dart';
import 'package:onlylive/widgets/organisms/reservation_notes_dialod.dart';
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
                      GestureDetector(
                        onTap: () => showDialog(
                          context: context,
                          builder: (dialogContext) {
                            final fanMeeting =
                                homeVM.fanMeetings[HomeListType.future]!.first;
                            return ReservationDialog(
                              fanMeeing: fanMeeting,
                              balance: homeVM.wallet.balance,
                              onPressedButton: () async {
                                Navigator.pop(dialogContext);
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext2) =>
                                      ReservationNotesDialog(
                                    onPressedButton: () async {
                                      await homeVM
                                          .createReservation(fanMeeting.id);
                                      Navigator.pop(dialogContext2);
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext3) =>
                                            CompleteReservationDialog(
                                          fanMeeting.talent.mainSquareImageUrl,
                                        ),
                                      );
                                    },
                                    talentImageUri:
                                        fanMeeting.talent.mainSquareImageUrl,
                                    style: fanMeeting.style,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: NowTalentListView(
                            homeVM.fanMeetings[HomeListType.now] ?? [],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: FutureTalentListView(
                          homeVM.fanMeetings[HomeListType.future] ?? [],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                            child: TopicTalentGridView(
                                homeVM.fanMeetings[HomeListType.popular]!)),
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
