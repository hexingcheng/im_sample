import 'package:onlylive/domain/entities/reservation.dart';
import 'package:openapi/api.dart';

class ReservationStateMapper {
  static const reservationStateMap = {
    ReservationState.unknown: GrpcReservationState.nonReservationState,
    ReservationState.wait: GrpcReservationState.wait,
    ReservationState.done: GrpcReservationState.done,
    ReservationState.abort: GrpcReservationState.abort,
  };

  static ReservationState decode(GrpcReservationState grpc) {
    return reservationStateMap.entries
        .firstWhere((element) => element.value == grpc)
        .key;
  }

  static GrpcReservationState encode(ReservationState state) {
    return reservationStateMap.entries
        .firstWhere((element) => element.key == state)
        .value;
  }
}
