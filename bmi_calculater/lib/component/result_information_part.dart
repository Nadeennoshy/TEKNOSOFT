import 'package:flutter/material.dart';

class ResultInformationPart extends StatelessWidget {
  const ResultInformationPart(
      {super.key, required this.result, required this.resultRange});
  final String resultRange;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.50),
              offset: const Offset(1, 1),
              blurRadius: 4,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(text: 'A BMI of   ', children: [
              TextSpan(
                  text: resultRange,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )),
              const TextSpan(
                text: ' indicates that your',
              )
            ]),
          ),
          Text.rich(
            TextSpan(text: 'weight is in the ', children: [
              TextSpan(
                text: result,
                style: const TextStyle(color: Colors.blue),
              ),
              const TextSpan(
                text: ' category for a',
              ),
            ]),
          ),
          const Text('person of your height'),
          const SizedBox(
            height: 30,
          ),
          const Text('Maintaining a healthy weight reduce the '),
          const Text('risk of disease associated with '),
          const Text('overweight and obesity'),
        ],
      ),
    );
  }
}
