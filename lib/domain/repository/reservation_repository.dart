abstract class ReservationRepository {
  // CreateReservation is reservation creator
  Future<void> createReservation(String accessToken, int fanmeetingID, String fanUUID);
}