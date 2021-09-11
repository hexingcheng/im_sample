class CallTransaction {
  CallTransaction({
    required this.callUUID,
    required this.talentDisplayName,
    required this.talentUUID,
    required this.fanMeetingID,
    required this.reservationID,
    this.updatedAt,
  });

  String talentDisplayName;
  String talentUUID;
  String callUUID;
  int fanMeetingID;
  int reservationID;
  DateTime? updatedAt;
}
