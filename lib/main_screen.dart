import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  final int numberOfCards;
  const MainScreen({super.key, required this.numberOfCards});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _values = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.numberOfCards; i++) {
      _values.add(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: widget.numberOfCards,
          itemBuilder: (context, index) {
            return CounterCard(
              onPressed: (newValue) {
                setState(() {
                  _values[index] = newValue;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
