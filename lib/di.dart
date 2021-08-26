import 'package:onlylive/config.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/infra/api/admin_repository.dart';
import 'package:onlylive/infra/api/auth_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/api/fan_meeting_repository.dart';
import 'package:onlylive/infra/api/fan_repository.dart';
import 'package:onlylive/infra/api/ranking_repository.dart';
import 'package:onlylive/infra/api/reservation_repository..dart';
import 'package:onlylive/infra/api/feature_repository.dart';
import 'package:onlylive/infra/api/wallet_repository.dart';
import 'package:openapi/api.dart';

void di() {
  final _client = ApiClient(basePath: Config.app.host);

  Repositories(
      reservationRepository: APIReservationRepository(_service),
      fanRepository: APIFanRepository(_service),
      fanMeetingRepository: APIFanmeetingRepository(_service),
      adminRepository: APIAdminRepository(_service),
      featureRepository: APIFeatureRepository(_service),
      rankingRepository: APIRankingRepository(_service),
      walletRepository: APIWalletRepository(_service),
      authRepository: APIAuthRepository(_service));
}
