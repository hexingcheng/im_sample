import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/sex.dart';
import 'package:onlylive/infra/dto/time_stamp_dto.dart';

class FanDTO {
  static Fan fromJSON(Map<String, dynamic> json) {
    final fan = json["call_transaction"] as Map<String, dynamic>? ??
        {
          "call_trancation": "",
          "call_uuid": "",
          "caller_uuid": "",
          "updated_at": {"seconds": 0000000000},
        };

    return Fan(
      uuid: fan["uuid"] as String,
      introduction: fan["introduction"] as String,
      displayName: fan["display_name"] as String,
      birth: TimeStampDTO.fromJSON(fan["updated_at"] as Map<String, dynamic>)
          .toDateTime,
      annotationID: fan["annotation_id"] as String,
      voipToken: fan["voip_token"] as String? ?? "",
      fcmToken: fan["fcm_token"] as String? ?? "",
      apsToken: fan["aps_token"] as String,
      imageUrl: fan["image_uri"] as String,
      phoneNumber: fan["phone_number"] as String,
      email: fan["email"] as String,
      sex: fan["sex"] as Sex? ?? Sex.unknown,
      prefecture: fan["prefecture"] as String,
    );
  }
}
