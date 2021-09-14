import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:onlylive/view/auth/register_profile_screen.dart';
import 'package:onlylive/view/main_vm.dart';
import 'package:onlylive/view/tab_bar_chage_notifier.dart';
import 'package:onlylive/widgets/atoms/badge.dart';
import 'package:onlylive/widgets/organisms/permissoin_dialog.dart';
import 'package:provider/provider.dart';
import 'package:onlylive/view/reservation/reservation_screen.dart';
import 'package:onlylive/view/home/home_screen.dart';

class MainScreen extends StatelessWidget with WidgetsBindingObserver {
  MainScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() => MaterialPageRoute<dynamic>(
        builder: (_) => MainScreen(),
      );

  BottomNavigationBarItem _buildTabBar(
      String text, String iconRef, bool hasBadge) {
    return BottomNavigationBarItem(
      activeIcon: BottomTabItem(
        iconRef: iconRef,
        text: text,
      ),
      icon: BottomTabItem(
        iconRef: iconRef,
        iconColor: const Color(0xffA2ACBB),
        text: text,
        hasBadge: hasBadge,
      ),
    );
  }

  final Map<TabItemType, TabItem> tabs = {
    TabItemType.home: TabItem(text: "ホーム", iconRef: "assets/icons/home.png"),
    TabItemType.reservation:
        TabItem(text: "通話予約", iconRef: "assets/icons/reservation.png"),
    TabItemType.myPage:
        TabItem(text: "マイページ", iconRef: "assets/icons/my_page.png"),
  };

  final Map<TabItemType, Widget> pages = {
    TabItemType.home: const HomeScreen(),
    TabItemType.reservation: const CallReservationScreen(),
    TabItemType.myPage: const SizedBox(),
  };

  BuildContext? permissionDialogContext;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainVM>(
          create: (context) => MainVM()..initState(),
        ),
        ChangeNotifierProvider<TabBarChageNotifier>(
            create: (context) => TabBarChageNotifier())
      ],
      builder: (context, child) {
        final vm = context.watch<MainVM>();

        if (vm.initilized) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            if (vm.hasUnRegisteredProfile) {
              Navigator.push(context, RegisterProfileScreen.route());
            }
            if (vm.hasNotGrantedPermission) {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (dialogContext) {
                    permissionDialogContext = dialogContext;
                    return PermissionDialog(
                        onTapCameraPermission: vm.getCameraPermisson,
                        onTapMicPermission: vm.getMicPermisson,
                        onTapPhonePermission: vm.getPhonePermission,
                        isGrantedMicPermission: vm.isGrantedMicPermission,
                        isGrantedCameraPermission: vm.isGrantedCameraPermission,
                        isGrantedPhonePermission: vm.isGrantedPhonePermission);
                  });
            } else {
              if (permissionDialogContext != null) {
                Navigator.pop(permissionDialogContext!);
              }
            }
          });
        }
        final tabBarChageNotifier = context.watch<TabBarChageNotifier>();
        return CupertinoTabScaffold(
            controller: tabBarChageNotifier.controller,
            tabBar: CupertinoTabBar(
              iconSize: 100,
              activeColor: const Color(0xffA3B7FF),
              inactiveColor: const Color(0xffA2ACBB),
              items: TabItemType.values
                  .map((tab) => _buildTabBar(
                        tabs[tab]!.text,
                        tabs[tab]!.iconRef,
                        tabBarChageNotifier.tabBadges[tab]!,
                      ))
                  .toList(),
            ),
            tabBuilder: (context, index) {
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                    child: pages.values.elementAt(index));
              });
            });
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
      {required this.text,
      required this.iconRef,
      this.iconColor,
      this.hasBadge = false,
      Key? key})
      : super(key: key);
  final String text;
  final String iconRef;
  final Color? iconColor;
  final bool hasBadge;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10),
        SizedBox(
          width: 30,
          height: 23,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  iconRef,
                  width: 23,
                  height: 23,
                  color: iconColor,
                ),
              ),
              if (hasBadge)
                const Positioned(
                  right: -4,
                  top: -4,
                  child: Badge(),
                ),
            ],
          ),
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
