import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final Function(int newValue) onPressed;
  const CounterCard({super.key, required this.onPressed});

  @override
  State<CounterCard> createState() => CounterCardState();
}

class CounterCardState extends State<CounterCard> {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $c'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.onPressed(++c);
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
