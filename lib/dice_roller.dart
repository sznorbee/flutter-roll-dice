import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_flip_widget/animated_flip_widget.dart';

final randomizer = Random();
final controller = FlipController();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    controller.flip();
    // set 300ms delay to simulate dice roll
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      });
    });
  }

  int getRandomDiceRoll() {
    return randomizer.nextInt(6) + 1;
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedFlipWidget(
          front: Image.asset('assets/images/dice-$currentDiceRoll.png',
              width: 200),
          back: Image.asset('assets/images/dice-$currentDiceRoll.png',
              width: 200),
          controller: controller,
          clickable: false,
          flipDuration: const Duration(milliseconds: 600),
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
