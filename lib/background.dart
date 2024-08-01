import 'package:flutter/material.dart';
import 'package:dice_roller/diceroll.dart';

var startali = Alignment.topLeft;
var endali = Alignment.bottomRight;

class Background extends StatelessWidget {
  const Background(this.clr1, this.clr2, {super.key});
  final Color clr1;
  final Color clr2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [clr1, clr2],
          begin: startali,
          end: endali,
        ),
      ),
      child: const Center(
        child: DiceRolled(),
      ),
    );
  }
}