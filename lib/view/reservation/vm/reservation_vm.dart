import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/reservation/get_unfinished_reservation_use_case.dart';

class ReservationVM with ChangeNotifier {
  bool existReservation = false;

  int? _waitNum;
  int? get waitNum => _waitNum;

  String? _talentImageUrl;
  String get talentImageUrl => _talentImageUrl ?? "";
  String? _talentDisplayName;
  String get talentDisplayName => _talentDisplayName ?? "";
  int? _secondsPerReservation;
  int get secondsPerReservation => _secondsPerReservation ?? 0;
  int? _coinNum;
  int get coinNum => _coinNum ?? 0;

  bool _initilized = false;
  bool get initilized => _initilized;

  Future<void> initState() async {
    await getReservation();
    _initilized = true;
    notifyListeners();
  }

  Future<void> getReservation() {
    return GetUnfinishedReservationUseCase(Repositories.reservationRepo)
        .execute()
        .then((value) {
      final talent = value.item1.talent;
      if (talent != null) {
        _talentImageUrl = talent.mainRectangleImageUrl;
        _talentDisplayName = talent.displayName;
      }
      existReservation = true;
      _waitNum = value.item2.waitNum;
      _secondsPerReservation = value.item1.secondsPerReservation;
      _coinNum = value.item1.itemCode.coinNum();
    });
  }
}
