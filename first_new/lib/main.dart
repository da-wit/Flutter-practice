import 'package:flutter/material.dart';
import './gradiant_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:
            //const GradaintContainer(
            //     Color.fromARGB(95, 245, 246, 250), Color.fromARGB(95, 255, 4, 4)),
            const GradaintContainer.purple(),
        appBar: AppBar(
          title: const Text("hello world"),
        ),
      ),
    ),
  );
}
