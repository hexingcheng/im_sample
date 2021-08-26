import 'package:flutter/material.dart';
import 'package:onlylive/view/home/screens/list_fan_meeting_grid_view.dart';
import 'package:onlylive/view/home/screens/topic_talent_list/vm/topic_talent_list_vm.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';
import 'package:provider/provider.dart';

class TopicTalentListScreen extends StatelessWidget {
  const TopicTalentListScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const TopicTalentListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TopicTalentListVM>(
      create: (context) => TopicTalentListVM(),
      builder: (context, _) {
        final vm = context.watch<TopicTalentListVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            title: "おすすめタレント",
            leading: Back(context),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListFanMeetingGridView(
                  fanMeetings: vm.fanMeetingAndReserved
                      .map((e) => e.fanMeeting)
                      .toList(),
                  update: vm.listTopicFanMeeting),
            ),
          ),
        );
      },
    );
  }
}
