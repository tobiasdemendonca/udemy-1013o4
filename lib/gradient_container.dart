import 'package:flutter/material.dart';
import 'package:udemy_1013o4/dice_roller.dart';

const backgroundRadialAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            RadialGradient(colors: colors, center: backgroundRadialAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
