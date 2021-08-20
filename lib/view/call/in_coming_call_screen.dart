import 'package:callkeep/callkeep.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/services/call_service.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/call/vm/incoming_call_vm.dart';
import 'package:onlylive/widgets/atoms/close.dart';
import 'package:onlylive/widgets/atoms/simple_app_bar.dart';
import 'package:provider/provider.dart';
// import 'package:tencent_trtc_cloud/trtc_cloud_video_view.dart';

class InComingCallScreen extends StatelessWidget {
  static Route<dynamic> route(
      {required FlutterCallkeep callkeep, required CallInfo callInfo}) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => InComingCallScreen(),
      settings: RouteSettings(
          arguments: {"callkeep": callkeep, "callInfo": callInfo}),
    );
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    return ChangeNotifierProvider<InComingCallVM>(
        create: (context) => InComingCallVM(
              callKeep: args["callkeep"] as FlutterCallkeep,
              callInfo: args["callInfo"] as CallInfo,
            ),
        builder: (context, ba) {
          final vm = context.read<InComingCallVM>();
          return Scaffold(
              backgroundColor: Colors.blue,
              appBar: SimpleAppBar(
                leading: Close(context),
                title: "ログイン",
              ),
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(vm.callInfo.callerImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 180),
                    Text(
                      vm.callInfo.callerName,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          gradient: OnlyliveColor.gradient,
                        ),
                        child: Center(
                          child: Image.network(
                            vm.callInfo.callerImage,
                            width: 190,
                            height: 190,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 156),
                    Row(
                      children: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff00E855)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          child: const Text("call"),
                          onPressed: () => vm.startCall(context),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          child: Text("reject"),
                          onPressed: () => vm.startCall(context),
                        )
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}

class CallActionButton extends StatelessWidget {
  const CallActionButton(
      {required this.action,
      required this.backgroundColor,
      required this.icon});
  final void Function() action;
  final Color backgroundColor;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xff00E855)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      child: icon,
      onPressed: () => action,
    );
  }
}
