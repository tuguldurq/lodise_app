import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view_model/home_view_model.dart';
import '../../../routing/routes.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key, required this.viewModel});
  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => context.go(Routes.eventCreate), icon: Icon(Icons.add)),
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text("Event list"),
        ),
      ),
    );
  }
}