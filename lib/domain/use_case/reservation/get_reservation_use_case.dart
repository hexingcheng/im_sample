import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetReservationUseCase extends UseCase {
  GetReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<Reservation> execute(int reservationID) async {
    return UseCase.retryAuth(() async {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (apiToken == null) {
        throw NotFonudAuthenticationInformation();
      }
      return _reservationRepository
          .get(apiToken, reservationID)
          .then((value) => value)
          .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
    });
  }
}
