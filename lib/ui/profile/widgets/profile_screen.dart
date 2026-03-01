import 'package:flutter/material.dart';
import 'package:lodise_app/ui/profile/view_model/profile_viewmodel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.viewModel});
  final ProfileViewModel viewModel;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text('Profile'));
  }
}