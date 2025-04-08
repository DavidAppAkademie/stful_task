import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final int c;
  final VoidCallback? onPressed;
  const CounterCard({super.key, this.onPressed, required this.c});

  @override
  State<CounterCard> createState() => CounterCardState();
}

class CounterCardState extends State<CounterCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: ${widget.c}'),
            ElevatedButton(
              onPressed: widget.onPressed,
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
