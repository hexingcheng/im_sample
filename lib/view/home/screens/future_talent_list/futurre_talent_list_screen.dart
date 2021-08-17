import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/view/home/screens/list_fan_meeting_grid_view.dart';
import 'package:onlylive/view/home/screens/future_talent_list/vm/future_talent_list_vm.dart';
import 'package:onlylive/widgets/atoms/back.dart';
import 'package:onlylive/widgets/atoms/schedule_label.dart';
import 'package:onlylive/widgets/molecules/simple_app_bar.dart';
import 'package:provider/provider.dart';

class FutureTalentListScreen extends StatelessWidget {
  const FutureTalentListScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const FutureTalentListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FutureTalentListVM>(
      create: (context) => FutureTalentListVM(),
      builder: (context, _) {
        final vm = context.watch<FutureTalentListVM>();
        return Scaffold(
          appBar: SimpleAppBar(
            title: "今度お話する",
            leading: Back(context),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                child: ListFanMeetingGridView(
                  fanMeetings: vm.fanMeetings,
                  layer: (fanMeeting) =>
                      fanMeeting.state == FanMeetingState.future
                          ? ScheduleLabel(fanMeeting.startTime)
                          : const SizedBox.shrink(),
                  update: vm.listFutureFanMeeting,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
