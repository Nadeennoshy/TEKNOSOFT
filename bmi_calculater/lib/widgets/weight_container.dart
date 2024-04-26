import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class WeightContainer extends StatelessWidget {
  const WeightContainer(
      {super.key, required this.onChange, required this.weight});
  final Function(int) onChange;
  final int weight;
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
      child: Column(
        children: [
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          NumberPicker(
            itemWidth: 50,
            itemHeight: 40,
            axis: Axis.horizontal,
            minValue: 3,
            maxValue: 200,
            value: weight,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }
}
