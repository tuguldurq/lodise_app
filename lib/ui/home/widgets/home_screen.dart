import 'package:flutter/material.dart';

import '../view_model/home_view_model.dart';
import './event_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.viewModel});
  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.25,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Сайна уу", style: TextStyle(fontSize: 10)),
              Text("Төгөлдөр".toUpperCase(), overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpeg"),
          ),
        ],
        actionsPadding: EdgeInsets.all(8.0),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return EventWidget();
        },
      ),
    );
  }
}


/**
 * event
 * 
 * title
 * cover photo
 * location
 * price
 * start date time 
 * end date time
 * location
 * 
 * event operations
 * share 
 * make a favorite
 * 
 * 
 */