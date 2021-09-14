import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlylive/domain/service/call_service.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/widgets/atoms/round_rect_button.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDialog extends StatelessWidget {
  const PermissionDialog(
      {required this.onTapCameraPermission,
      required this.onTapMicPermission,
      required this.onTapPhonePermission,
      required this.isGrantedMicPermission,
      required this.isGrantedCameraPermission,
      required this.isGrantedPhonePermission,
      Key? key})
      : super(key: key);

  final void Function(PermissionStatus statux) onTapCameraPermission;
  final void Function(PermissionStatus status) onTapMicPermission;
  final void Function(PermissionStatus status) onTapPhonePermission;

  final bool isGrantedCameraPermission;
  final bool isGrantedMicPermission;
  final bool isGrantedPhonePermission;

  Future<PermissionStatus> _cameraPermissionRequest() {
    return Permission.camera.request().then((value) => value);
  }

  Future<PermissionStatus> _micPermissionRequest() {
    return Permission.microphone.request().then((value) => value);
  }

  Future<bool> _phonePermissionRequest(BuildContext context) {
    return CallService().phoneAccountPermissionRequest(context);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset("assets/images/permission_dialog_cover.png"),
          const SizedBox(height: 24),
          const Text(
            "Onlyliveをはじめよう",
            style: TextStyle(
              color: OnlyliveColor.darkPurple,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "以下のアクセス許可が必要です",
            style: TextStyle(
              color: OnlyliveColor.darkPurple,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 235,
            height: 52,
            child: RoundRectButton(
              onPressed: () => _micPermissionRequest().then(onTapMicPermission),
              text: "マイクを許可",
              textColor: OnlyliveColor.purple,
              icon: SvgPicture.asset(
                "assets/icons/mic.svg",
                color: isGrantedMicPermission
                    ? OnlyliveColor.lightPurple
                    : OnlyliveColor.purple,
              ),
              isEnabled: !isGrantedMicPermission,
              disableTextColor: OnlyliveColor.lightPurple,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 235,
            height: 52,
            child: RoundRectButton(
              onPressed: () =>
                  _cameraPermissionRequest().then(onTapCameraPermission),
              text: "カメラロールを許可",
              textColor: OnlyliveColor.purple,
              icon: SvgPicture.asset(
                "assets/icons/album.svg",
                color: isGrantedCameraPermission
                    ? OnlyliveColor.lightPurple
                    : OnlyliveColor.purple,
              ),
              isEnabled: !isGrantedCameraPermission,
              disableTextColor: OnlyliveColor.lightPurple,
            ),
          ),
          if (Platform.isAndroid)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SizedBox(
                width: 235,
                height: 52,
                child: RoundRectButton(
                  onPressed: () =>
                      _phonePermissionRequest(context).then((value) {
                    if (value) {
                      onTapPhonePermission(PermissionStatus.granted);
                    } else {
                      onTapPhonePermission(PermissionStatus.denied);
                    }
                  }),
                  text: "電話を許可",
                  textColor: OnlyliveColor.purple,
                  icon: Icon(
                    Icons.call,
                    color: isGrantedPhonePermission
                        ? OnlyliveColor.lightPurple
                        : OnlyliveColor.purple,
                  ),
                  isEnabled: !isGrantedPhonePermission,
                  disableTextColor: OnlyliveColor.lightPurple,
                ),
              ),
            ),
          const SizedBox(height: 49),
        ],
      ),
    );
  }
}
