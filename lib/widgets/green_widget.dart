import 'package:flutter/material.dart';
import 'blue_widget.dart';

class GreenWidget extends StatelessWidget {
  final Function incrementarCounter;

  const GreenWidget({super.key, required this.incrementarCounter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      child: BlueWidget(incrementarCounter: incrementarCounter),
    );
  }
}
