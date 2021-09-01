import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlylive/services/navigator_service.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/use_case/admin/get_app_config_use_case.dart.dart';
import 'package:onlylive/domain/use_case/call_transaction/get_call_transaction_use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/snippets/locale.dart';
import 'package:onlylive/view/call/call_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RootVM extends ChangeNotifier with WidgetsBindingObserver {
  @override
  RootVM() {
    Future(() async {
      await setLanguageCode();
      await permissionRequest();
    });
  }

  void init() {
    WidgetsBinding.instance!.addObserver(this);
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
      await getEntry();
      // await checkCallTransaction();
    }
  }

  Future<void> setLanguageCode() async {
    final locale = await getLocale();
    await SharedPrefrencesService.setLanguageCode(locale.languageCode);
  }

  Future<void> checkCallTransaction() async {
    final callTransaction = await getCallTransaction();
    if (callTransaction != null &&
        await hasWaitingCall(callTransaction.updatedAt)) {
      NavigatorService.navigatorKey.currentState!
          .push(CallScreen.route(callTransaction));
    }
  }

  Future<EntryType> getEntry() async {
    int version(String version) {
      return int.parse(version.replaceAll(RegExp(r'\.'), ""));
    }

    final appConfig =
        await GetAppConfigUseCase(Repositories.adminRepository).execute();

    final packageInfo = await PackageInfo.fromPlatform();

    // force update
    if (version(packageInfo.version) <
        version(appConfig.forceUpdateAndroidVersion)) {
      return EntryType.forceUpdate;
    }

    // maintenance
    if (appConfig.isMaintenance) {
      return EntryType.maintenance;
    }

    return EntryType.home;
  }

  Future<CallTransaction?> getCallTransaction() async {
    try {
      return GetCallTransactionUseCase(Repositories.fanRepository)
          .execute("fanUUID");
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

enum EntryType { home, call, maintenance, forceUpdate }
