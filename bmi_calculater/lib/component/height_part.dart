import 'package:bmi_calculater/widgets/height_container.dart';
import 'package:flutter/material.dart';

class HeightPart extends StatelessWidget {
  const HeightPart({super.key, required this.height, required this.onChange});
  final int height;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Height (cm)',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        HeightContainer(
          minValue: 30,
          maxValue: 300,
          value: height,
          onChange: onChange,
        ),
      ],
    );
  }
}
