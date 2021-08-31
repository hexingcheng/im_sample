import 'package:flutter/rendering.dart';
import 'package:onlylive/infra/api/follow_repository.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/infra/api/admin_repository.dart';
import 'package:onlylive/infra/api/auth_repository.dart';
import 'package:onlylive/infra/api/fan_meeting_repository.dart';
import 'package:onlylive/infra/api/fan_repository.dart';
import 'package:onlylive/infra/api/ranking_repository.dart';
import 'package:onlylive/infra/api/reservation_repository..dart';
import 'package:onlylive/infra/api/feature_repository.dart';
import 'package:onlylive/infra/api/wallet_repository.dart';
import 'package:onlylive/infra/api/talent_repository.dart';

void di() {
  final basePath = Config.app.host;

  Repositories(
<<<<<<< HEAD
      reservationRepository: APIReservationRepository(basePath),
      fanRepository: APIFanRepository(basePath),
      fanMeetingRepository: APIFanmeetingRepository(basePath),
      adminRepository: APIAdminRepository(),
      featureRepository: APIFeatureRepository(basePath),
      rankingRepository: APIRankingRepository(basePath),
      walletRepository: APIWalletRepository(basePath),
      authRepository: APIAuthRepository(basePath));
=======
    reservationRepository:
        APIReservationRepository(ReservationServiceApi(_client)),
    fanRepository: APIFanRepository(FanServiceApi(_client)),
    fanMeetingRepository:
        APIFanmeetingRepository(FanMeetingServiceApi(_client)),
    adminRepository: APIAdminRepository(),
    featureRepository: APIFeatureRepository(FeatureServiceApi(_client)),
    rankingRepository: APIRankingRepository(PointServiceApi(_client)),
    walletRepository: APIWalletRepository(WalletServiceApi(_client)),
    authRepository: APIAuthRepository(AuthServiceApi(_client)),
    talentRepository: APITalentRepository(InfluencerServiceApi(_client)),
    followRepository: APIFollowRepository(FollowServiceApi(_client)),
  );
>>>>>>> 予約までの流れ接続
}
