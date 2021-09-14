import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/reservation_status.dart';
import 'package:tuple/tuple.dart';

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

  Future<Tuple2<FanMeeting, ReservationStatus>> getUnfinishedReservationByFan(
      String apiToken, String fanUUID);
}
