import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlylive/services/navigator_service.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/use_case/admin_usecase.dart';
import 'package:onlylive/domain/use_case/call_transaction.dart';
import 'package:onlylive/view/alert/force_update_screen.dart';
import 'package:onlylive/view/call/call_screen.dart';
import 'package:onlylive/view/alert/maintenance_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RootVM extends ChangeNotifier with WidgetsBindingObserver {
  @override
  RootVM() {
    Future(() async {
      await permissionRequest();
    });
  }

  void init() {
    WidgetsBinding.instance!.addObserver(this);
    checkAppState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      await checkAppState();
      // await checkCallTransaction();
    }
  }

  Future<void> checkCallTransaction() async {
    final callTransaction = await getCallTransaction();
    if (callTransaction != null &&
        await hasWaitingCall(callTransaction.updatedAt)) {
      NavigatorService.navigatorKey.currentState!
          .push(CallScreen.route(callTransaction));
    }
  }

  Future<void> checkAppState() async {
    int version(String version) {
      return int.parse(version.replaceAll(RegExp(r'\.'), ""));
    }

    final appConfig =
        await AppConfigUseCase(Repositories.adminRepository).get();

    final packageInfo = await PackageInfo.fromPlatform();

    // force update
    if (version(packageInfo.version) <
        version(appConfig.forceUpdateAndroidVersion)) {
      NavigatorService.navigatorKey.currentState!
          .push(ForceUpdateScreen.route());
      return;
    }

    // maintenance
    if (appConfig.isMaintenance) {
      NavigatorService.navigatorKey.currentState!
          .push(MaintenanceScreen.route());
      return;
    }
  }

  Future<CallTransaction?> getCallTransaction() async {
    try {
      return CallTransactionUseCase(Repositories.fanRepository).get("fanUUID");
    } catch (e) {
      return null;
    }
  }

  Future<bool> hasWaitingCall(DateTime updatedAt) async {
    try {
      return updatedAt.add(const Duration(seconds: 5)).isAfter(DateTime.now());
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> permissionRequest() async {
    if (!await Permission.phone.isGranted) {
      Permission.phone.request();
    }
    if (!await Permission.contacts.isGranted) {
      Permission.contacts.request();
    }
  }
}
