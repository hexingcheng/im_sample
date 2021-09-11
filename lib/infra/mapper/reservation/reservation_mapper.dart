import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/infra/mapper/reservation/reservation_state_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class ReservationMapper {
  static Reservation decode(GrpcReservation grpc) {
    return Reservation(
      id: grpc.id,
      fanUUID: grpc.fanUuid,
      state: ReservationStateMapper.decode(grpc.state),
      fanmeetingID: grpc.fanMeetingId,
      influecnerUUID: grpc.influencerUuid,
      startTime: TimeStampMapper.decode(grpc.startTime),
      finishTime: TimeStampMapper.decode(grpc.finishTime),
      chekiImageUrl: grpc.chekiImageUri,
      createdAt: TimeStampMapper.decode(grpc.createdAt),
      updatedAt: TimeStampMapper.decode(grpc.updatedAt),
    );
  }
}
