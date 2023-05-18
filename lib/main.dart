import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/home_screen.dart';
import 'package:flutter_application_4/services/api_service.dart';

void main() {
  ApiService.getTodaysToons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
