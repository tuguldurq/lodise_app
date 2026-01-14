import '../../services/models/event.dart';
import '../../../utils/result.dart';

abstract class EventRepository {

  Future<Result<List<Event>>> eventsList();
  Future<Result<void>> createEvent({required Event event});
  Future<Result<void>> editEvent({required Event event});
  Future<Result<void>> deleteEvent({required String id});
}