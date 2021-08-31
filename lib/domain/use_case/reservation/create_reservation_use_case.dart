import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class CreateReservationUseCase extends UseCase {
  CreateReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<void> execute(int fanmeetingID) async {
    await _reservationRepository.create(fanmeetingID);
  }
}
