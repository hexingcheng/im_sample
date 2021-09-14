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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootVM.init(),
        builder: (context, snap) {
          return Scaffold();
        });
  }
}
