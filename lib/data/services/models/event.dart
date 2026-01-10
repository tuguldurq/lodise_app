import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  Event({
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
  });

  final String title;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;
  final String? location;

  factory Event.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Event(
      title: data?['title'],
      description: data?['description'],
      startDate: data?['start_date'],
      endDate: data?['end_date'],
      location: data?['location'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "title": title,
      "description": description,
      "start_date": startDate,
      if (endDate != null) "end_date": endDate,
      if (location != null) "location": location,
    };
  }
}
