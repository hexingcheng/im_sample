import 'package:onlylive/domain/repository/reservation_repository.dart';

class ReservationUseCase {
  ReservationUseCase(this._reservationRepository);
  final ReservationRepository _reservationRepository;

  Future<void> create(int fanmeetingID) async {
    const accessToken = "";
    await _reservationRepository.createReservation(
        accessToken, fanmeetingID, "01cb1b7f-9878-4b59-bf25-36a9afa698ac");
  }
}
