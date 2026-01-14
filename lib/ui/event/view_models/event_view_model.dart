import 'package:flutter/material.dart';

import '../../../data/repository/event/event_repository.dart';
import '../../../data/services/models/event.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class EventViewModel extends ChangeNotifier {
  // repo
  EventViewModel({
    required EventRepository repository
  }) : _repository = repository {
    create = Command1(_createEvent);
  }

  final EventRepository _repository;
  late Command1<void, Event> create;
  
  Future<Result<void>> _createEvent(Event event) async {
    final result = await _repository.createEvent(event: event);
    notifyListeners();
    return result;
  }
}