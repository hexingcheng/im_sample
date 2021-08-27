import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class ListFanMeetingByTopicUseCase extends UseCase {
  ListFanMeetingByTopicUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<Map<String, List<FanMeetingAndReserved>>> execute(Topic topic,
      {String? pageToken}) async {
    return _fammeetingRepo.listFanMeetingByTopic(topic, pageToken ?? "");
  }
}
