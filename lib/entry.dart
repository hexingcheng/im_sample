import 'package:onlylive/services/navigator_service.dart';
import 'package:onlylive/view/alert/force_update_screen.dart';
import 'package:onlylive/view/alert/maintenance_screen.dart';
import 'package:onlylive/view/auth/register_profile_screen.dart';
import 'package:onlylive/view/call/call_screen.dart';
import 'package:onlylive/view/home/home_screen.dart';
import 'package:onlylive/view/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/rootVM.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en'),
            const Locale('ja'),
          ],
        );
      },
    );
  }
}

class App extends StatelessWidget {
  const App(this.rootVM, {Key? key}) : super(key: key);
  final RootVM rootVM;

  Future<Widget> geEntryWidget() async {
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
        future: rootVM.getEntry(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            switch (snap.data! as EntryType) {
              case EntryType.home:
                return MainScreen();
              case EntryType.forceUpdate:
                return const ForceUpdateScreen();
              case EntryType.maintenance:
                return MainScreen();
              case EntryType.call:
                return CallScreen();
            }
          } else {
            return MainScreen();
          }
        });
  }
}
