import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/use_case/admin/get_app_config_use_case.dart.dart';
import 'package:onlylive/domain/use_case/call_transaction/get_call_transaction_use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/snippets/locale.dart';
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
      print("cccccc");
      await getEntry();
    }
  }

  late CallTransaction _callTransaction;
  bool initilized = false;
  EntryType _entry = EntryType.home;
  EntryType get entry => _entry;
  CallTransaction get callTransaction => _callTransaction;

  Future<void> setLanguageCode() async {
    final locale = await getLocale();
    await SharedPrefrencesService.setLanguageCode(locale.languageCode);
  }

  Future<bool> hasCall() {
    _callTransaction = CallTransaction(
        callUUID: "callUUID",
        talentDisplayName: "",
        talentUUID: "",
        fanMeetingID: 1011,
        reservationID: 0,
        updatedAt: DateTime.now());
    return Future.value(true);
    // return getCallTransaction().then((callTransaction) {
    //   if (callTransaction != null &&
    //       hasWaitingCall(callTransaction.updatedAt)) {
    //     _callTransaction = CallTransaction(
    //         callUUID: callTransaction.callUUID,
    //         talentDisplayName: callTransaction.talentDisplayName,
    //         talentUUID: callTransaction.talentUUID,
    //         fanMeetingID: callTransaction.fanMeetingID,
    //         reservationID: callTransaction.reservationID,
    //         updatedAt: callTransaction.updatedAt);
    //     return true;
    //   }
    //   return false;
    // }).catchError((_) => false);
  }

  Future<void> getEntry() async {
    int version(String version) {
      return int.parse(version.replaceAll(RegExp(r'\.'), ""));
    }

    final appConfig =
        await GetAppConfigUseCase(Repositories.adminRepository).execute();

    final packageInfo = await PackageInfo.fromPlatform();

    // force update
    if (version(packageInfo.version) <
        version(appConfig.forceUpdateAndroidVersion)) {
      _entry = EntryType.forceUpdate;
    }

    // maintenance
    if (appConfig.isMaintenance) {
      _entry = EntryType.maintenance;
    }
    if (await hasCall()) {
      _entry = EntryType.call;
    }
    initilized = true;
    notifyListeners();
    return;
  }

  Future<CallTransaction?> getCallTransaction() {
    return GetCallTransactionUseCase(Repositories.fanRepository).execute();
  }

  bool hasWaitingCall(DateTime updatedAt) {
    try {
      return updatedAt.add(const Duration(seconds: 5)).isAfter(DateTime.now());
    } catch (e) {
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
