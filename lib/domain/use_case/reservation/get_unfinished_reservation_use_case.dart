import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/reservation_status.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_state_mapper.dart';
import 'package:tuple/tuple.dart';

class GetUnfinishedReservationUseCase extends UseCase {
  GetUnfinishedReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<Tuple2<FanMeeting, ReservationStatus>> execute() {
    final fanUUID = SharedPrefrencesService.getUUID();
    return UseCase.retryAuth(() {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (apiToken == null || fanUUID == null) {
        throw NotFonudAuthenticationInformation();
      }
      return _reservationRepository
          .getUnfinishedReservationByFan(apiToken, fanUUID)
          .then((value) => value)
          .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
    });
  }
}
