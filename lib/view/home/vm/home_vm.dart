import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/feature_use_case.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';
import 'package:onlylive/domain/use_case/ranking_usecase.dart';
import 'package:onlylive/domain/use_case/reservation_use_case.dart';
import 'package:onlylive/domain/use_case/wallte_usecase.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_fan_meeting_by_topic_use_case.dart';
import 'package:onlylive/domain/use_case/feature/list_feature_use_case.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_fan_meeting_by_state_use_case.dart';
import 'package:onlylive/domain/use_case/ranking/get_ranking_use_case.dart';

enum HomeListType {
  now,
  future,
  popular,
}

enum HomeLoadingType {
  now,
  future,
  talent,
  ranking,
}

enum RankingType { monthly, weekly }

class HomeVM with ChangeNotifier {
  HomeVM() {
    Future(() async {
      await initState();
    });
  }

  // private
  final Map<HomeListType, List<FanMeetingAndReserved>> _fanMeetings =
      Map.fromIterables(
          HomeListType.values, HomeListType.values.map((e) => []));
  List<Feature> _features = [];
  Ranking _ranking = Ranking(weekly: [], monthly: []);
  final Map<HomeLoadingType, bool> _loading = Map.fromIterables(
      HomeLoadingType.values, HomeLoadingType.values.map((e) => true));

  // getter
  Map<HomeListType, List<FanMeetingAndReserved>> get fanMeetingAndReserved =>
      _fanMeetings;
  List<Feature> get features => _features;
  Ranking get ranking => _ranking;
  Map<HomeLoadingType, bool> get loading => _loading;

  final List<Talent> hot = [];
  Future<void> initState() async {
    Future.wait([
      setFeature(),
      periodicUpdateTalentList(),
      setRanking(),
      getWallet(),
    ]);
  }

  Future<void> setFeature() async {
    _features =
        await ListFeatureUseCase(Repositories.featureRepository).execute();
    notifyListeners();
  }

  Future<void> setRanking() async {
    _ranking =
        await GetRankingUseCase(Repositories.rankingRepository).execute();
    notifyListeners();
  }

  Future<void> updatesHomeList() async {
    Future<void> initNowTalent() async {
      final _fanMeetings =
          await ListFanMeetingByStateUseCase(Repositories.fanMeetingRepository)
              .execute(FanMeetingState.now);
      fanMeetingAndReserved[HomeListType.now] = _fanMeetings.values.first;
    }

    Future<void> initFutureTalent() async {
      final _fanMeetings =
          await ListFanMeetingByStateUseCase(Repositories.fanMeetingRepository)
              .execute(FanMeetingState.future);
      fanMeetingAndReserved[HomeListType.future] = _fanMeetings.values.first;
    }

    Future<void> initTopicTalent() async {
      final _fanMeetings =
          await ListFanMeetingByTopicUseCase(Repositories.fanMeetingRepository)
              .execute(Topic.popular);
      fanMeetingAndReserved[HomeListType.popular] = _fanMeetings.values.first;
    }

    await Future.wait([
      initNowTalent(),
      initFutureTalent(),
      initTopicTalent(),
    ]);
    notifyListeners();
  }

  Future<void> periodicUpdateTalentList() async {
    await updatesHomeList();
    // await Future.delayed(const Duration(seconds: 30));
    // periodicUpdateTalentList();
  }

  // 後で移行
  Future<void> createReservation(int fanMeetingID) async {
    // await ReservationUseCase(Repositories.reservationRepo).create(fanMeetingID);
    return;
  }

  late final Wallet wallet;

  Future<void> getWallet() async {
    wallet = await WalletUseCase(Repositories.walletRepository).get("fanUUID");
  }
}
