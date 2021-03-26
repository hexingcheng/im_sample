class CallTransaction {
  CallTransaction({
    required this.callUUID,
    required this.talentDisplayName,
    required this.talentUUID,
    required this.fanMeetingID,
    required this.reservationID,
    required this.itemCode,
    required this.balance,
    required this.fanUUID,
    required this.updatedAt,
  });

  String talentDisplayName;
  String talentUUID;
  String callUUID;
  String fanUUID;
  int fanMeetingID;
  int reservationID;
  int balance;
  String itemCode;
  DateTime updatedAt;
}
