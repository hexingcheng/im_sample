import 'package:onlylive/domain/entities/reservation.dart';

abstract class ReservationRepository {
  // CreateReservation is reservation creator
  Future<void> create(int fanmeetingID);
  Future<bool?> get(int fanmiitingID);
}
