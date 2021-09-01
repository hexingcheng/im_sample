import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/fan/check_duplicate_use_case.dart';
import 'package:onlylive/domain/use_case/fan/update_display_name_use_case.dart';
import 'package:onlylive/domain/use_case/fan/update_fan_use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/snippets/validator.dart';

class RegisterProfileVM with ChangeNotifier {
  RegisterProfileVM() {
    _setLanguageCode();
  }

  // private
  String _name = "";
  bool _isLoading = false;
  String _id = "";
  DateTime? _birth;
  String _languageCode = "en";
  bool _selectedBirth = false;
  bool _isValidName = false;
  bool _isValidId = false;
  bool _isValidBirth = false;
  bool _isDuplicatedId = false;

  // getter
  DateTime get birth => _birth ?? DateTime.now();
  String get id => _id;
  bool get selectedBirth => _selectedBirth;
  bool get isValidId => _isValidId && !_isDuplicatedId;
  bool get isDuplicatedId => _isDuplicatedId;
  bool get isEnableButton => _isValidName && isValidId && _isValidBirth;
  String get languageCode => _languageCode;
  bool get isLoading => _isLoading;

  void onChageName(String name) {
    _isValidName = Validator.name(name);
    _name = name;
    notifyListeners();
  }

  void onChageId(String id) {
    _isValidId = Validator.id(id);
    _id = id;
    notifyListeners();
  }

  void onChageBirth(DateTime birth) {
    _selectedBirth = true;
    _isValidBirth = Validator.birthday(birth);
    _birth = birth;
    notifyListeners();
  }

  Future<void> checkDuplicate() async {
    try {
      await SharedPrefrencesService.setApiToken(
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiODkxODU4ZGItNWQzMS00YWJjLWJlYWMtMDJjMDdiYTIyNjkzIiwidHlwZSI6ImZhbiIsImF1ZCI6ImJhcnJ5LWFwaSIsImV4cCI6MTYzMDM5OTQwNCwianRpIjoiWFN3dEd5ZXdHZUx1anZBWm5hT1IiLCJpYXQiOjE2MzAzOTIyMDQsImlzcyI6ImJhcnJ5LWFwaSIsIm5iZiI6MTYzMDM5MjIwNCwic3ViIjoiYmFycnktYXBpIn0.jRdR_seohkluwx5lnZ6IPLXeUaT9kvbuD49_Wrmr724");
      await CheckDuplicateAnnotationIdUseCase(Repositories.fanRepository)
          .execute(
        annotationId: _id,
        birth: birth,
      );
      _isDuplicatedId = false;
    } on AlaredyExistAnnotaionId {
      _isDuplicatedId = true;
    } finally {
      notifyListeners();
    }
  }

  Future<void> updateDisplayName() async {
    await UpdateDisplayNameUseCase(Repositories.fanRepository).execute(
      displayName: _name,
    );
  }

  Future<void> updateAnnotationIdAndBirth() async {
    await UpdateAnnotationIdAndBirthUseCase(Repositories.fanRepository).execute(
      annotationId: _id,
      birth: birth,
    );
  }

  Future<RegisterProfileResult> updateFan() async {
    try {
      _isLoading = true;
      notifyListeners();

      await checkDuplicate();

      if (isDuplicatedId) {
        return RegisterProfileResult.duplicatedId;
      }
      await Future.wait([
        updateAnnotationIdAndBirth(),
        updateDisplayName(),
      ]);

      return RegisterProfileResult.success;
    } catch (e) {
      return RegisterProfileResult.unknown;
    } finally {
      _isLoading = false;
    }
  }

  void _setLanguageCode() {
    final code = SharedPrefrencesService.getLanguageCode();
    if (code != null) {
      _languageCode = code;
    }
  }
}

enum RegisterProfileResult {
  success,
  unknown,
  duplicatedId,
}
