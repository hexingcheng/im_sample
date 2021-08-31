class Schedule {
  Schedule({
    required this.id,
    required this.limitedPeople,
    required this.eventDate,
    required this.itemCode,
  });

  final int id;
  final int limitedPeople;
  final DateTime eventDate;
  final String itemCode;
}
