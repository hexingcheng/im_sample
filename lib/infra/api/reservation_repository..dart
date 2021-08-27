import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:openapi/api.dart';

class APIReservationRepository implements ReservationRepository {
  APIReservationRepository(this._client);
  final ReservationServiceApi _client;

  @override
  Future<void> createReservation(
      String accessToken, int fanmeetingID, String fanUUID) async {
    try {
      await _client.reservationServiceCreateReservation(
          GrpcCreateReservationRequest(
              fanMeetingId: fanmeetingID, fanUuid: fanUUID));
    } catch (e) {
      print(e);
    }
  }
}
