import 'package:onlylive/services/navigator_service.dart';
import 'package:onlylive/view/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/rootVM.dart';
import 'package:onlylive/theme/theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RootVM>(
      create: (context) => RootVM()..init(),
      builder: (context, child) {
        final vm = context.read<RootVM>();
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorKey: NavigatorService.navigatorKey,
          theme: OnlyliveTheme().defaultTheme,
          home: App(vm),
        );
      },
    );
  }
}

class App extends StatelessWidget {
  const App(this.rootVM, {Key? key}) : super(key: key);
  final RootVM rootVM;

  Future<Widget> getWidget() async {
    // final callTransaction = await rootVM.getCallTransaction();
    // if (callTransaction != null &&
    //     await rootVM.hasWaitingCall(callTransaction.updatedAt)) {
    //   return const CallScreen();
    // }
    return MainScreen();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getWidget(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            return snap.data! as Widget;
          } else {
            return MainScreen();
          }
        });
  }
}
