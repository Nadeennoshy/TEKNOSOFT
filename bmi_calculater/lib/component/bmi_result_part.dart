import 'package:flutter/material.dart';

class BmiResultPart extends StatelessWidget {
  const BmiResultPart({super.key, required this.bmiText, required this.result});
  final String bmiText;
  final String result;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Your BMI is'),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 17, 107, 180),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                bmiText,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                'kg/m2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '(' + result + ')',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
