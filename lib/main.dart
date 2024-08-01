import 'package:flutter/material.dart';
import 'package:dice_roller/background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Background(Colors.lime, Colors.blue),
      ),
    ),
  );
}