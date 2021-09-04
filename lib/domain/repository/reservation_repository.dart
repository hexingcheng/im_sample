import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/reservation_status.dart';

abstract class ReservationRepository {
  // CreateReservation is reservation creator
  Future<void> create(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID});
  Future<ReservationStatus> getStatus(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID});
}
