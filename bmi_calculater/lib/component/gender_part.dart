import 'package:bmi_calculater/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class GenderPart extends StatelessWidget {
  const GenderPart(
      {super.key,
      required this.maleOnTap,
      required this.femaleOnTap,
      required this.selectedMale,
      required this.selectedFemale});
  final Function() maleOnTap;
  final Function() femaleOnTap;
  final bool selectedMale;
  final bool selectedFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Gender',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GenderContainer(
              genderIcon: Icons.man,
              genderType: 'Male',
              onTap: maleOnTap,
              isSelected: selectedMale,
            ),
            const SizedBox(
              width: 15,
            ),
            GenderContainer(
              genderIcon: Icons.woman,
              genderType: 'Female',
              onTap: femaleOnTap,
              isSelected: selectedFemale,
            ),
          ],
        ),
      ],
    );
  }
}
