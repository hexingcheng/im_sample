import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/reservation_status.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/infra/mapper/reservation/reservation_mapper.dart';
import 'package:openapi/api.dart';
import 'package:onlylive/infra/api/repository.dart';

class APIReservationRepository implements ReservationRepository {
  APIReservationRepository(this._basePath);
  final String _basePath;

  @override
  Future<void> create(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID}) {
    return ReservationServiceApi(
            ApiClient(basePath: _basePath)..addApiToken(apiToken)..addXPlatForm())
        .reservationServiceCreateReservation(GrpcCreateReservationRequest(
            fanMeetingId: fanmeetingID, fanUuid: fanUUID))
        .onError<ApiException>(
            (e, stackTrace) => throw Repository.apiException(e));
  }

  @override
  Future<ReservationStatus> getStatus(
      {required String apiToken,
      required String fanUUID,
      required int fanmeetingID}) {
    final service = ReservationServiceApi(
        ApiClient(basePath: _basePath)..addApiToken(apiToken));
    return service
        .reservationServiceCountNumReservedFan(fanUUID, fanmeetingID)
        .then((res) => ReservationStatus(
            isReserved: res.isReserved ?? false,
            numReservedFan: res.numReservedFan ?? 0))
        .onError<ApiException>(
            (e, stackTrace) => throw Repository.apiException(e));
  }

  @override
  Future<Reservation> get(String apiToken, int reservationID) async {
    final service = ReservationServiceApi(
        ApiClient(basePath: _basePath)..addApiToken(apiToken));
    return service
        .reservationServiceGetReservation(reservationID)
        .then(ReservationMapper.decode)
        .onError<ApiException>(
            (e, stackTrace) => throw Repository.apiException(e));
  }
}
