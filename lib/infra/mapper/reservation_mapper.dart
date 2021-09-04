import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:onlylive/infra/mapper/reservation_state_mapper.dart';
import 'package:openapi/api.dart';

class ReservationMapper {
  static Reservation decode(GrpcReservation grpc) {
    return Reservation(
        id: grpc.id,
        fanUUID: grpc.fanUuid,
        state: ReservationStateMapper.decode(
            grpc.state ?? GrpcReservationState.number0),
        fanmeetingID: grpc.fanMeetingId,
        influecnerUUID: grpc.influencerUuid,
        startTime: TimeStampMapper.decode(grpc.startTime),
        finishTime: TimeStampMapper.decode(grpc.finishTime),
        createdAt: TimeStampMapper.decode(grpc.createdAt),
        updatedAt: TimeStampMapper.decode(grpc.updatedAt));
  }
}
