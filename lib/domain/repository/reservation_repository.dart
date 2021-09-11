import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/reservation_status.dart';

abstract class ReservationRepository {
  // CreateReservation is reservation creator
  Future<void> create(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID});

  // get is reservation getter
  Future<Reservation> get(String apiToken, int reservationID);

  Future<ReservationStatus> getStatus(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID});
}
