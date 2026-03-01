import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lodise_app/routing/routes.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({super.key, required this.child});
  final Widget child;
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(Routes.home);
        break;
      case 1:
        context.go(Routes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              onDestinationSelected: (index) => _onItemTapped(context, index),
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
