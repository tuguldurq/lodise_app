import './event_repository.dart';
import '../../services/api.dart';
import '../../services/models/event.dart';
import '../../../utils/result.dart';

class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl({
    required ApiClient api,
  }) : _api = api;

  final ApiClient _api;

  @override
  Future<Result<void>> createEvent({required Event event}) async {
    try {
      await _api.postEvent(event);
      return Result.ok(null);
    } on Exception catch (error)  {
      return Result.error(error);
    }
  }

  @override
  Future<Result<void>> deleteEvent({required String id}) {
    // TODO: implement deleteEvent
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> editEvent({required Event event}) {
    // TODO: implement editEvent
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Event>>> eventsList() {
    // TODO: implement eventsList
    throw UnimplementedError();
  }
  
}