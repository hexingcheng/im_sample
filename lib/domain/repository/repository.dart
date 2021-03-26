import 'package:onlylive/domain/repository/admin_repository.dart';
import 'package:onlylive/domain/repository/reservation_repository.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class Repositories {
  Repositories(
      {required ReservationRepository reservationRepository,
      required FanRepository fanRepository,
      required FanMeetingRepository fanMeetingRepository,
      required AdminRepository adminRepository}) {
    _reservationRepository = reservationRepository;
    _fanRepository = fanRepository;
    _fanMeetingRepository = fanMeetingRepository;
    _adminRepository = adminRepository;
  }

  static ReservationRepository? _reservationRepository;
  static FanRepository? _fanRepository;
  static FanMeetingRepository? _fanMeetingRepository;
  static AdminRepository? _adminRepository;

  static ReservationRepository get reservationRepo =>
      provider(_reservationRepository);
  static FanRepository get fanRepository => provider(_fanRepository);
  static FanMeetingRepository get fanMeetingRepository =>
      provider(_fanMeetingRepository);
  static AdminRepository get adminRepository => provider(_adminRepository);

  static T provider<T>(T? repository) {
    if (repository == null) throw Error();
    return repository;
  }
}
