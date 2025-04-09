import 'package:flutter/material.dart';
import 'package:stful_task/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainScreen(
      numberOfCards: 7,
    ));
  }
}
