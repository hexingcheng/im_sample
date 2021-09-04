import 'package:onlylive/domain/entities/reservation_status.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetReservationStatusUseCase extends UseCase {
  GetReservationStatusUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<ReservationStatus> execute(int fanmeetingID) async {
    final uuid = SharedPrefrencesService.getUUID();
    return UseCase.retryAuth(() async {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (uuid == null || apiToken == null) {
        throw NotFonudAuthenticationInformation();
      }
      return _reservationRepository
          .getStatus(
              apiToken: apiToken, fanUUID: uuid, fanmeetingID: fanmeetingID)
          .then((value) => value)
          .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
    });
  }
}
