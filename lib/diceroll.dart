import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRolled extends StatefulWidget {
  const DiceRolled({super.key});

  @override
  State<DiceRolled> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRolled> {
  var activeDice = 2;
  void rolledDice() {
    setState(() {
      activeDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-$activeDice.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rolledDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}