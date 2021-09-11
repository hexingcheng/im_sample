import 'package:onlylive/domain/entities/reservation.dart';
import 'package:openapi/api.dart';

class ReservationStateMapper {
  static const stateMap = {
    ReservationState.unknown: GrpcReservationState.number0,
    ReservationState.wait: GrpcReservationState.number1,
    ReservationState.done: GrpcReservationState.number2,
    ReservationState.abort: GrpcReservationState.number3,
  };

  static ReservationState decode(GrpcReservationState grpc) {
    return stateMap.entries
        .firstWhere((element) => element.value == grpc,
            orElse: () =>
                const MapEntry<ReservationState, GrpcReservationState>(
                    ReservationState.unknown, GrpcReservationState.number0))
        .key;
  }

  static GrpcReservationState encode(ReservationState state) {
    return stateMap.entries.firstWhere((element) => element.key == state).value;
  }
}
