import 'package:first_flutter_app/dice_roller.dart';
import 'package:flutter/material.dart';

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [startColor, endColor],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
