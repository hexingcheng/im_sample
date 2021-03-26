class Reservation {
  Reservation(
      {required this.id,
      required this.fanUUID,
      required this.state,
      required this.fanmeetingID,
      required this.influecnerUUID,
      required this.startTime,
      required this.finishTime,
      required this.createdAt,
      required this.updatedAt});

  final int id;
  final ReservationState state;
  final String fanUUID;
  final int fanmeetingID;
  final String influecnerUUID;
  final DateTime startTime;
  final DateTime finishTime;
  final DateTime createdAt;
  final DateTime updatedAt;
}

enum ReservationState {
  unknow, // 不明
  wait, // 予約中
  done, // 通話完了
  abort, // ファンミーティングが終了し通話できなかった
}
