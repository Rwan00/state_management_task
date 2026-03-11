import 'package:flutter/material.dart';
import 'package:state_management_task/counter_screen.dart' show CounterScreen;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CounterScreen(),
    );
  }
}

