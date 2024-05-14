import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 25),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.only(
              // top: 20,
              // ),
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              foregroundColor: Colors.black12,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                color: Color.fromARGB(255, 246, 252, 255),
              ),
            ))
      ],
    );
  }
}
