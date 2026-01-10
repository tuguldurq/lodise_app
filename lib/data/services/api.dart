import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/models/event.dart';
import '../../utils/result.dart';

class ApiClient {
  ApiClient({required FirebaseFirestore db}) : database = db;

  final FirebaseFirestore database;

  Future<Result<void>> postEvent(Event event) async {
    try {
      final ref = await database.collection("events")
        .withConverter(
          fromFirestore: Event.fromFirestore, 
          toFirestore: (Event event, _) => event.toFirestore())
        .add(event);
      final id = ref.id;
      print(id);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}