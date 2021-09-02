import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:openapi/api.dart';

class APIReservationRepository implements ReservationRepository {
  APIReservationRepository(this._basePath);
  final String _basePath;

  @override
  Future<void> createReservation(
      String accessToken, int fanmeetingID, String fanUUID) async {
    try {
      final service = ReservationServiceApi(ApiClient(basePath: _basePath));
      await service.reservationServiceCreateReservation(
          GrpcCreateReservationRequest(
              fanMeetingId: fanmeetingID, fanUuid: fanUUID));
    } catch (e) {
      print(e);
    }
  }
}
