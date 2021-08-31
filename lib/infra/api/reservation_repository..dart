import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:onlylive/infra/mapper/reservation_mapper.dart';
import 'package:onlylive/services/shared_prefrences_service.dart';

<<<<<<< HEAD
class APIReservationRepository implements ReservationRepository {
  APIReservationRepository(this._basePath);
  final String _basePath;
=======
class APIReservationRepository extends Repository
    implements ReservationRepository {
  APIReservationRepository(this._client);
  final ReservationServiceApi _client;
>>>>>>> 予約までの流れ接続

  @override
  Future<void> create(int fanmeetingID) async {
    final apiToken = await SharedPrefrencesService.getApiToken();
    final fanUUID = await SharedPrefrencesService.getUUID();
    try {
<<<<<<< HEAD
      final service = ReservationServiceApi(ApiClient(basePath: _basePath));
      await service.reservationServiceCreateReservation(
=======
      _client.apiClient.addDefaultHeader(
        apiTokenHeader,
        apiToken,
      );
      await _client.reservationServiceCreateReservation(
>>>>>>> 予約までの流れ接続
          GrpcCreateReservationRequest(
              fanMeetingId: fanmeetingID, fanUuid: fanUUID));
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<bool?> get(int fanmeetingID) async {
    final apiToken = await SharedPrefrencesService.getApiToken();
    final fanUUID = await SharedPrefrencesService.getUUID();
    _client.apiClient.addDefaultHeader(
      apiTokenHeader,
      apiToken,
    );
    final res = await _client.reservationServiceCountNumReservedFan(
        fanUUID, fanmeetingID);
    return res.isReserved;
  }
}
