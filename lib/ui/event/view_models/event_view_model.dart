import 'package:flutter/material.dart';

import '../../../utils/result.dart';

class EventViewModel extends ChangeNotifier {
  // repo
  EventViewModel();
  
  Future<Result<void>> createEvent() async {
    notifyListeners();
    return Result.ok(null);
  }
}