import 'package:flutter/material.dart';

class AgeContainer extends StatelessWidget {
  const AgeContainer(
      {super.key,
      required this.age,
      required this.ageIncrement,
      required this.ageDecrement});
  final int age;
  final Function() ageIncrement;
  final Function() ageDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: const Color(0xff000000).withOpacity(0.50),
                offset: const Offset(1, 1),
                blurRadius: 1),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: ageDecrement,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black)),
              child: const Icon(
                Icons.remove,
                size: 20,
              ),
            ),
          ),
          Text(
            '$age',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          GestureDetector(
            onTap: ageIncrement,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black)),
              child: const Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
