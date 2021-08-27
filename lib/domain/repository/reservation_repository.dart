import 'package:onlylive/domain/entities/reservation.dart';

abstract class ReservationRepository {
  // CreateReservation is reservation creator
  Future<void> createReservation(
      String accessToken, int fanmeetingID, String fanUUID);
  Future<Reservation> getReservation(
      String accessToken, int fanmiitingID, String fanUUID);
}
