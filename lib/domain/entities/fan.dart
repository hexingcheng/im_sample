import 'package:onlylive/domain/entities/sex.dart';

class Fan {
  Fan({
    required this.uuid,
    required this.introduction,
    required this.displayName,
    required this.annotationID,
    required this.birth,
    required this.phoneNumber,
    this.voipToken,
    this.apsToken,
    this.fcmToken,
    this.email,
    this.imageUrl,
    this.sex,
    this.prefecture,
  });

  String uuid;
  String introduction;
  String displayName;
  String annotationID;
  DateTime? birth;
  String phoneNumber;
  String? voipToken;
  String? apsToken;
  String? fcmToken;
  String? email;
  String? imageUrl;
  Sex? sex;
  String? prefecture;
}
