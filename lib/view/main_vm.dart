import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/fan/get_fan_use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';

class MainVM with ChangeNotifier {
  MainVM() {
    Future(() async => {
          await init(),
        });
  }
  // private
  bool _hasUnRegisteredProfile = false;

  // getter
  bool get hasUnRegisteredProfile => _hasUnRegisteredProfile;

  Future<void> init() async {
    final fan = await getFan();
    if (fan != null) {
      if (fan.annotationID == "" ||
          fan.birth == null ||
          fan.displayName == "") {
        _hasUnRegisteredProfile = true;
      }
    }
    notifyListeners();
  }

  Future<Fan?> getFan() async {
    final uuid = SharedPrefrencesService.getUUID();
    if (uuid != null) {
      try {
        final fan = await GetFanUseCase(Repositories.fanRepository).execute();
        return fan;
      } catch (e) {
        return null;
      }
    }
  }
}
