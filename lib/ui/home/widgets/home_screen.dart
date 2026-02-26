import 'package:flutter/material.dart';

import '../view_model/home_view_model.dart';
import './event_widget.dart';

enum ViewType { map, list }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});
  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ViewType selectionViewType = ViewType.map;

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
      body: Column(
        children: [
          SegmentedButton<ViewType>(
            segments: [
              ButtonSegment<ViewType>(
                value: ViewType.map,
                label: Text('Map'),
                icon: Icon(Icons.map),
              ),
              ButtonSegment<ViewType>(
                value: ViewType.list,
                label: Text('List'),
                icon: Icon(Icons.list),
              ),
            ],
            selected: <ViewType>{selectionViewType},
            onSelectionChanged: (selection) => setState(() {
              selectionViewType = selection.first;
            }),
          ),
          EventWidget(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: Colors.white,
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: 'home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_circle),
                  label: 'account',
                ),
              ],
            ),
          ),
        ),
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