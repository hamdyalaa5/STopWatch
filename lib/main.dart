import 'package:flutter/material.dart';
import 'StopWatch.dart';
import 'Onboarding/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
       Stopwatch.routName: (_)=> Stopwatch()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
