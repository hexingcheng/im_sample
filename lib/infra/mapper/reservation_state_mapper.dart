import 'package:onlylive/domain/entities/reservation.dart';

class ReservationStateMapper {
  static Map<ReservationState, int> fanMeetingStateMap = {
    ReservationState.unknown: 0,
    ReservationState.wait: 1,
    ReservationState.done: 3,
    ReservationState.abort: 4,
  };

  static ReservationState decode(int state) {
    return fanMeetingStateMap.keys.firstWhere(
        (k) => fanMeetingStateMap[k] == state,
        orElse: () => ReservationState.unknown);
  }
}
