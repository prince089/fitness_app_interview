import 'package:fitness_app/Screen/on_board.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: FitnessApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoard();
  }
}
