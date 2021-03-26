import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:http/http.dart' as http;

class APIReservationRepository implements ReservationRepository {
  APIReservationRepository(this._client);
  final APIClient _client;

  @override
  Future<void> createReservation(
      String accessToken, int fanmeetingID, String fanUUID) async {
    try {
      await _client.post(
        "v1/reservations",
        body: {
          "fan_meeting_id": fanmeetingID,
          "fan_uuid": fanUUID,
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
