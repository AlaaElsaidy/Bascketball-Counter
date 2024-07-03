import 'package:apps/cubit/counter_cubit.dart';
import 'package:apps/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  pointsCounter({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home()
      ),
    );
  }
}
