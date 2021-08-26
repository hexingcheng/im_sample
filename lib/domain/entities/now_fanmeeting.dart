class NowFanMeeting {
  NowFanMeeting({
    required this.id,
    required this.itemCode,
    required this.limitedPeople,
    required this.eventDate,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  ItemCode itemCode;
  int limitedPeople;
  DateTime eventDate;
  DateTime createdAt;
  DateTime updatedAt;
}

typedef ItemCode = String;

extension ItemCodeExtention on ItemCode {
  int coinNum() {
    final coinNum = itemCodeMap[this];
    if (coinNum == null) return throw Exception("not found item code");
    return coinNum;
  }
}

Map<String, int> itemCodeMap = {
  "item000": 0,
  "item001": 300,
  "item002": 500,
  "item003": 750,
  "item004": 1000,
  "item005": 1250,
  "item006": 1500,
  "item007": 1750,
  "item008": 2000,
  "item009": 3000,
  "item010": 4000,
  "item011": 5000,
  "item012": 6000,
  "item013": 7000,
  "item014": 8000,
  "item015": 9000,
  "item016": 10000,
};
