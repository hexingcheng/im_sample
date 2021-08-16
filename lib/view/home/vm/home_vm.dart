import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/feature.dart';
import 'package:onlylive/domain/entities/ranking.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/feature_use_case.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';
import 'package:onlylive/domain/use_case/ranking_usecase.dart';

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
  final Map<HomeListType, List<FanMeeting>> _fanMeetings = Map.fromIterables(
      HomeListType.values, HomeListType.values.map((e) => []));
  List<Feature> _features = [];
  Ranking _ranking = Ranking(weekly: [], monthly: []);
  final Map<HomeLoadingType, bool> _loading = Map.fromIterables(
      HomeLoadingType.values, HomeLoadingType.values.map((e) => true));

  // getter
  Map<HomeListType, List<FanMeeting>> get fanMeetings => _fanMeetings;
  List<Feature> get features => _features;
  Ranking get ranking => _ranking;
  Map<HomeLoadingType, bool> get loading => _loading;

  final List<Talent> hot = [];
  Future<void> initState() async {
    Future.wait([
      setFeature(),
      periodicUpdateTalentList(),
      setRanking(),
    ]);
  }

  Future<void> setFeature() async {
    _features =
        await ListFeatureUseCase(Repositories.featureRepository).execute();
    notifyListeners();
  }

  Future<void> setRanking() async {
    _ranking = await RankingUseCase(Repositories.rankingRepository).get();
    notifyListeners();
  }

  Future<void> updatesHomeList() async {
    Future<void> initNowTalent() async {
      final _fanMeetings =
          await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
              .state(FanMeetingState.now);
      fanMeetings[HomeListType.now] = _fanMeetings.values.first;
    }

    Future<void> initFutureTalent() async {
      final _fanMeetings =
          await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
              .state(FanMeetingState.future);
      fanMeetings[HomeListType.future] = _fanMeetings.values.first;
    }

    Future<void> initTopicTalent() async {
      final _fanMeetings =
          await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
              .topic(Topic.popular);
      fanMeetings[HomeListType.popular] = _fanMeetings.values.first;
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
    await Future.delayed(const Duration(seconds: 30));
    periodicUpdateTalentList();
  }
}
