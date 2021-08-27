import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/infra/mapper/reservation_mapper.dart';

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

  @override
  Future<Reservation> getReservation(
      String accessToken, int fanmeetingID, String fanUUID) async {
    // final res = _client.get(
    //     "v1/reservations/fans/$fanUUID/fan-meeting/$fanmeetingID",
    //     fromJson: ReservationMapper.fromJSON);
    // return res;
    return Reservation(
      id: 1,
      fanUUID: "aaa",
      state: ReservationState.wait,
      fanmeetingID: 2,
      influecnerUUID: "bbb",
      startTime: DateTime.now(),
      finishTime: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
