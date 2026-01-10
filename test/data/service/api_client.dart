import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lodise_app/data/services/api.dart';
import 'package:lodise_app/data/services/models/event.dart';
import 'package:lodise_app/firebase_options.dart';
import 'package:lodise_app/utils/result.dart';
import 'package:test/test.dart';

void main() {
  
  group('Api client for FirebaseFirestore', (){
    late FirebaseFirestore database;
    late ApiClient api;
    setUp(() {
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      database = FirebaseFirestore.instance;
      api = ApiClient(db: database);
    });

    test('New event should be created', () async {
      Event e = Event(title: 'title', description: 'desc', startDate: DateTime.now(), endDate: DateTime.now(), location: 'UB');
      final result = await api.postEvent(e);
      expect(result, isA<Ok<void>>());
    });
  });
}