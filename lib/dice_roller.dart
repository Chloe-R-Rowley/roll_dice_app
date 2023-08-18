import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
