import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './common/providers.dart';
import './routing/router.dart';

void main() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(providers: providers, child: MainApp())
  );
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router()
    );
  }
}
