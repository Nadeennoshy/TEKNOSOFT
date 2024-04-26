import 'dart:math';
import 'package:bmi_calculater/component/bmi_result_part.dart';
import 'package:bmi_calculater/component/data_container_part.dart';
import 'package:bmi_calculater/component/result_information_part.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final int age;
  final int height;
  final int weight;
  final bool isMale;
  const ResultView(
      {super.key,
      required this.age,
      required this.height,
      required this.weight,
      required this.isMale});

  @override
  Widget build(BuildContext context) {
    double bmi = weight / pow(height / 100, 2);
    String bmiText = bmi.toStringAsFixed(1);
    String result = '';
    String resultRange = '';
    if (bmi < 18.5) {
      result = 'Underweight';
      resultRange = 'less than 18.5';
    } else if (bmi >= 18.5 && bmi < 25) {
      result = 'Normal';
      resultRange = '18.5-24.9';
    } else if (bmi >= 25 && bmi < 30) {
      result = 'Overweight';
      resultRange = '25-29.9';
    } else if (bmi >= 30) {
      result = 'Obese';
      resultRange = ' >= 30';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  BmiResultPart(bmiText: bmiText, result: result),
                  const SizedBox(
                    height: 15,
                  ),
                  DataContainerPart(
                      age: age, height: height, weight: weight, isMale: isMale),
                  const SizedBox(
                    height: 25,
                  ),
                  ResultInformationPart(
                      result: result, resultRange: resultRange),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TRY AGAIN',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.refresh,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
