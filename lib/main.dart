import 'package:flutter/material.dart';
import 'widgets/green_widget.dart';
import 'widgets/orange_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 42;

  // Función que incrementa el contador
  void incrementarCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: const Text('Lifting up state'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GreenWidget(incrementarCounter: incrementarCounter), // Pasamos la función a los hijos
            OrangeWidget(counter: counter), // Pasamos el nuevo valor del contador a los hijos
          ],
        ),
      ),
    );
  }
}
