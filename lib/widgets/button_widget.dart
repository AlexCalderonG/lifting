import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function incrementarCounter;

  ButtonWidget({super.key, required this.incrementarCounter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: TextButton(
        onPressed: () => {
          incrementarCounter()
        },
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Update counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              letterSpacing: -2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
