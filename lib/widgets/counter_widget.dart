import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int counter;

  const CounterWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        color: Colors.purple[200],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "$counter",
              style: const TextStyle(
                fontSize: 42.0,
                letterSpacing: -2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
