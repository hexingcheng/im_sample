import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetReservationUseCase extends UseCase {
  GetReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<bool?> execute(int fanmeetingID) async {
    return _reservationRepository.get(fanmeetingID);
  }
}
