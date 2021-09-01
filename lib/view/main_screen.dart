import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:onlylive/view/auth/register_profile_screen.dart';
import 'package:onlylive/view/main_vm.dart';
import 'package:provider/provider.dart';
import 'package:onlylive/view/auth/sign_up_screen.dart';
import 'package:onlylive/view/reservation/reservation_screen.dart';
import 'package:onlylive/view/home/home_screen.dart';

class MainScreen extends StatelessWidget with WidgetsBindingObserver {
  MainScreen({Key? key}) : super(key: key);
  BottomNavigationBarItem _buildTabBar(String text, String iconRef) {
    return BottomNavigationBarItem(
      activeIcon: BottomTabItem(
        iconRef: iconRef,
        text: text,
      ),
      icon: BottomTabItem(
        iconRef: iconRef,
        iconColor: const Color(0xffA2ACBB),
        text: text,
      ),
    );
  }

  final List<TabItem> tabs = [
    TabItem(text: "ホーム", iconRef: "assets/icons/home.png"),
    TabItem(text: "通話予約", iconRef: "assets/icons/reservation.png"),
    TabItem(text: "マイページ", iconRef: "assets/icons/my_page.png"),
  ];

  void init(BuildContext context) {
    final hasUnRegisteredProfile =
        context.select<MainVM, bool>((vm) => vm.hasUnRegisteredProfile);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (hasUnRegisteredProfile) {
        Navigator.push(context, RegisterProfileScreen.route());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainVM>(
      create: (context) => MainVM(),
      builder: (context, child) {
        init(context);
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            iconSize: 100,
            activeColor: const Color(0xffA3B7FF),
            inactiveColor: const Color(0xffA2ACBB),
            items: List.generate(
              tabs.length,
              (index) => _buildTabBar(tabs[index].text, tabs[index].iconRef),
            ),
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0: // 1番左のタブが選ばれた時の画面
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: HomeScreen());
                });
              case 1: // 1番左のタブが選ばれた時の画面
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(
                      child: CallReservationScreen());
                });
              case 2: // 1番左のタブが選ばれた時の画面
                return CupertinoTabView(
                  builder: (context) {
                    return const CupertinoPageScaffold(
                      child: SizedBox(),
                    );
                  },
                );
              default:
                return CupertinoTabView(
                  builder: (context) {
                    return CupertinoPageScaffold(child: HomeScreen());
                  },
                );
            }
          },
        );
      },
    );
  }
}

class TabItem {
  TabItem({required this.text, required this.iconRef});
  final String text;
  final String iconRef;
}

class BottomTabItem extends StatelessWidget {
  const BottomTabItem(
      {required this.text, required this.iconRef, this.iconColor});
  final String text;
  final String iconRef;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10),
        Image.asset(
          iconRef,
          width: 23,
          height: 23,
          color: iconColor,
        ),
        const SizedBox(height: 3),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            height: 1,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
