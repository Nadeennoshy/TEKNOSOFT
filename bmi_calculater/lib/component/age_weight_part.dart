import 'package:bmi_calculater/widgets/age_container.dart';
import 'package:bmi_calculater/widgets/weight_container.dart';
import 'package:flutter/material.dart';

class AgeAndWeightPart extends StatelessWidget {
  const AgeAndWeightPart(
      {super.key,
      required this.age,
      required this.weight,
      required this.ageDecrement,
      required this.ageIncrement,
      required this.onChange});
  final int age;
  final int weight;
  final Function() ageIncrement;
  final Function() ageDecrement;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight (kg)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AgeContainer(
                age: age,
                ageIncrement: ageIncrement,
                ageDecrement: ageDecrement),
            WeightContainer(
              weight: weight,
              onChange: onChange,
            ),
          ],
        ),
      ],
    );
  }
}
