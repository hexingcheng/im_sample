import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/service/call_service.dart';
import 'package:onlylive/domain/service/im_serivce.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/fan/get_fan_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

class MainVM with ChangeNotifier {
  MainVM();
  // private
  bool _hasUnRegisteredProfile = false;
  bool _isGrantedCameraPermission = false;
  bool _isGrantedMicPermission = false;
  bool _initilized = false;
  bool _hasPhoneAccount = false;

  // getter
  bool get hasUnRegisteredProfile => _hasUnRegisteredProfile;
  bool get isGrantedCameraPermission => _isGrantedCameraPermission;
  bool get isGrantedMicPermission => _isGrantedMicPermission;
  bool get hasNotGrantedPermission =>
      !_isGrantedMicPermission || !_isGrantedCameraPermission;
  bool get initilized => _initilized;
  bool get hasPhoneAccount => _hasPhoneAccount;
  final _service = CallService();

  Future<void> initState() async {
    final fan = await getFan();

    if (fan != null) {
      if (fan.annotationID == "" ||
          fan.birth == null ||
          fan.displayName == "") {
        _hasUnRegisteredProfile = true;
      }
    }
    // checkPermission();

    // await _service.displayIncomingCall("07043801881");
    _initilized = true;
    // final _service = IMService("userId", 0);
    // await _service.initSDK();
    // await _service.joinGroup(170);

    notifyListeners();
  }

  void phoneAccountPermissionRequest(BuildContext context) {
    // _service.phoneAccountPermissionRequest();
  }

  Future<Fan?> getFan() async {
    try {
      final fan = await GetFanUseCase(Repositories.fanRepository).execute();
      return fan;
    } catch (e) {
      return null;
    }
  }

  void getCameraPermisson(PermissionStatus status) {
    _isGrantedCameraPermission = status.isGranted;
    notifyListeners();
  }

  void getMicPermisson(PermissionStatus status) {
    _isGrantedMicPermission = status.isGranted;
    notifyListeners();
  }

  void getPermisson(PermissionStatus status) {
    _isGrantedMicPermission = status.isGranted;
    notifyListeners();
  }

  Future<void> _getCameraPermissionStatus() {
    return Permission.camera.isGranted
        .then((value) => {_isGrantedCameraPermission = value});
  }

  Future<void> _getMicPermissionStatus() {
    return Permission.microphone.isGranted
        .then((value) => _isGrantedMicPermission = value);
  }

  Future<void> checkPermission() {
    return Future.wait([
      _getCameraPermissionStatus(),
      _getMicPermissionStatus(),
      _service.hasPhoneAccount().then((value) => _hasPhoneAccount = value)
    ]);
  }
}
