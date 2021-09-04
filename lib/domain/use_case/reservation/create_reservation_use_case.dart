import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class CreateReservationUseCase extends UseCase {
  CreateReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<void> execute(int fanmeetingID) async {
    final uuid = SharedPrefrencesService.getUUID();

    UseCase.retryAuth(() {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (uuid == null || apiToken == null) {
        throw NotFonudAuthenticationInformation();
      }
      _reservationRepository
          .create(apiToken: apiToken, fanUUID: uuid, fanmeetingID: fanmeetingID)
          .catchError((e) => UseCase.useCaseErr(e as ApiError));
    });
  }
}
