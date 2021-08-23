import 'package:onlylive/domain/repository/admin_repository.dart';
import 'package:onlylive/domain/repository/feature_repository.dart';
import 'package:onlylive/domain/repository/ranking_repository.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';

class Repositories {
  Repositories({
    required ReservationRepository reservationRepository,
    required FanRepository fanRepository,
    required FanMeetingRepository fanMeetingRepository,
    required AdminRepository adminRepository,
    required FeatureRepository featureRepository,
    required RankingRepository rankingRepository,
    required WalletRepository walletRepository,
  }) {
    _reservationRepository = reservationRepository;
    _fanRepository = fanRepository;
    _fanMeetingRepository = fanMeetingRepository;
    _adminRepository = adminRepository;
    _featureRepository = featureRepository;
    _rankingRepository = rankingRepository;
    _walletRepository = walletRepository;
  }

  static ReservationRepository? _reservationRepository;
  static FanRepository? _fanRepository;
  static FanMeetingRepository? _fanMeetingRepository;
  static AdminRepository? _adminRepository;
  static FeatureRepository? _featureRepository;
  static RankingRepository? _rankingRepository;
  static WalletRepository? _walletRepository;

  static ReservationRepository get reservationRepo =>
      provider(_reservationRepository);
  static FanRepository get fanRepository => provider(_fanRepository);
  static FanMeetingRepository get fanMeetingRepository =>
      provider(_fanMeetingRepository);
  static AdminRepository get adminRepository => provider(_adminRepository);
  static FeatureRepository get featureRepository =>
      provider(_featureRepository);
  static RankingRepository get rankingRepository =>
      provider(_rankingRepository);
  static WalletRepository get walletRepository => provider(_walletRepository);

  static T provider<T>(T? repository) {
    if (repository == null) throw Error();
    return repository;
  }
}
