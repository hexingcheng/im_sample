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

void di() {
  final basePath = Config.app.host;

  Repositories(
      reservationRepository: APIReservationRepository(basePath),
      fanRepository: APIFanRepository(basePath),
      fanMeetingRepository: APIFanmeetingRepository(basePath),
      adminRepository: APIAdminRepository(),
      featureRepository: APIFeatureRepository(basePath),
      rankingRepository: APIRankingRepository(basePath),
      walletRepository: APIWalletRepository(basePath),
      authRepository: APIAuthRepository(basePath));
}
