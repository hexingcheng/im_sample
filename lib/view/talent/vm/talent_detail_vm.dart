import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/talent_usecase.dart';
import 'package:onlylive/domain/entities/talent.dart';

class TalentDetailVM with ChangeNotifier {
  // ハードコーディングデータ
  final talentName = "ふたばはすみ";
  final introduction = "自己紹介文テスト";
  final customLinkName = "ファンクラブ";
  final url = "https://instagram.com/ry___517?utm_medium=copy_link";
  final customLinkUrl = "https://www.google.com/";
  final eventDate = "12/18(月)";
  final startTime = "19:00 -";
  final secondsPerReservation = 5;
  final imageList = [
    "assets/images/splash.png",
    "assets/images/banner.png",
    "assets/images/logo.png"
  ];

  TalentDetailVM() {
    Future(() async {
      await initState();
    });
  }

  final String talentID = "d5a80f0e-86c6-4df4-87b9-fea801d1346e";
  late Talent _talent;

  Talent get talent => _talent;

  Future<void> initState() async {
    // await setTalent();
  }

  Future<void> updateTalentDetail() async {}

  Future<void> setTalent() async {
    print("setTalent");
    _talent = await TalentUseCase(Repositories.talentRepository).get(talentID);
  }
}
