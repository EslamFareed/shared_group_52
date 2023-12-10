import 'package:flutter/material.dart';
import 'package:shared_group_52/controllers/db/offline/shared_helper.dart';
import 'package:shared_group_52/screens/splash_screen.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
