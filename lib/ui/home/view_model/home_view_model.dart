import 'package:flutter/widgets.dart';
import 'package:lodise_app/utils/result.dart';

enum ViewType { map, list }

class HomeViewModel extends ChangeNotifier {
  
  ViewType viewType = ViewType.map;
  
  Future<Result<void>> clickMapListToggler() async {
    notifyListeners();
    return Result.ok(null);
  }
}