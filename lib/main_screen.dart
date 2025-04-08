import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _value1 = 0;
  int _value2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [
            CounterCard(
              onPressed: (newValue) {
                setState(() {
                  _value1 = newValue;
                });
              },
            ),
            CounterCard(
              onPressed: (newValue) {
                setState(() {
                  _value2 = newValue;
                });
              },
            ),
            Text('Summe: ${_value1 + _value2}'),
          ],
        ),
      ),
    );
  }
}
