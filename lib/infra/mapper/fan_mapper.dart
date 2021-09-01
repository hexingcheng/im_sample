import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/sex.dart';
import 'package:onlylive/infra/mapper/sex_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class FanMapper {
  static Fan decode(GrpcFan grpc) {
    return Fan(
      uuid: grpc.uuid,
      introduction: grpc.introduction,
      displayName: grpc.displayName,
      birth: grpc.birth != null ? TimeStampMapper.decode(grpc.birth) : null,
      annotationID: grpc.annotationId,
      voipToken: grpc.voipToken,
      fcmToken: grpc.fcmToken,
      apsToken: grpc.apsToken,
      imageUrl: grpc.imageUri,
      phoneNumber: grpc.phoneNumber,
      email: grpc.email,
      sex: SexMapper.decode(grpc.sex),
      prefecture: grpc.prefecture,
    );
  }
}
