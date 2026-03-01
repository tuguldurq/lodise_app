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
        leading: Icon(Icons.star),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search)), IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined))],
      ),
      body: Column(
        children: [
          SegmentedButton<ViewType>(
            showSelectedIcon: false,
            style: const ButtonStyle(
              visualDensity: VisualDensity(horizontal: -3, vertical: -3),
            ),
            segments: [
              ButtonSegment<ViewType>(
                value: ViewType.map,
                icon: Icon(Icons.map),
              ),
              ButtonSegment<ViewType>(
                value: ViewType.list,
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