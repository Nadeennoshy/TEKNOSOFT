import 'package:flutter/material.dart';

class DataContainerPart extends StatelessWidget {
  const DataContainerPart(
      {super.key,
      required this.age,
      required this.height,
      required this.weight,
      required this.isMale});
  final int age;
  final int height;
  final int weight;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                isMale ? Icons.man : Icons.woman,
                size: 30,
              ),
              Text('$age'),
              Text('$height'),
              Text('$weight'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  isMale ? 'Male' : 'Female',
                  style: const TextStyle(color: Colors.grey),
                ),
                const Text(
                  'Age',
                  style: TextStyle(color: Colors.grey),
                ),
                const Text(
                  'Height',
                  style: TextStyle(color: Colors.grey),
                ),
                const Text(
                  'Weight',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
