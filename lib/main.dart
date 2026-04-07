import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_task/bloc_observer.dart';
import 'package:state_management_task/counter_screen.dart' show CounterScreen;
import 'package:state_management_task/cubit/counter_cubit.dart';

void main() {
   Bloc.observer = MyBlocObserver();
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
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const CounterScreen(),
      ),
    );
  }
}
