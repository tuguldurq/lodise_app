import 'package:flutter/material.dart';

import '../view_models/event_view_model.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key, required this.viewModel});
  final EventViewModel viewModel;

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create event"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: textController,
            ),
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: Text("Create")
            ),
          ],
        )
      ),
    );
  }
}