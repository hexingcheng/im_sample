import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/view/home/screens/list_fan_meeting_grid_view.dart';
import 'package:onlylive/view/home/screens/now_talent_list/vm/now_talent_list_vm.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/now_label.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';

class NowTalentListScreen extends StatelessWidget {
  const NowTalentListScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const NowTalentListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NowTalentListVM>(
      create: (context) => NowTalentListVM(),
      builder: (context, _) {
        final vm = context.watch<NowTalentListVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            title: "今すぐお話する",
            leading: Back(context),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                child: ListFanMeetingGridView(
                  fanMeetings: vm.fanMeetingAndReserved
                      .map((e) => e.fanMeeting)
                      .toList(),
                  layer: (fanMeeting) => fanMeeting.state == FanMeetingState.now
                      ? const NowLabel()
                      : const SizedBox.shrink(),
                  update: vm.listNowFanMeeting,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
