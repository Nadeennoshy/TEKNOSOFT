import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({super.key,required this.minValue,required this.maxValue,required this.value,required this.onChange});
  final int minValue;
  final int maxValue;
  final int value;
  final Function(int) onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
          )
        ),
        child: Column(
          children: [
            NumberPicker(
              axis: Axis.horizontal,
              itemHeight: 40,
              itemWidth: 46,
              itemCount: 7,
              minValue: minValue, maxValue: maxValue, value: value, onChanged: onChange
              ),
              const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                7,
                (index) => Container(
                  color: index == 3 ? Colors.blue : Colors.grey,
                  width: index == 3 ? 3 : 2,
                  height: index == 3 ? 60 : 30,
                ),
              ),
            ),
            const SizedBox(height: 15,),
          ],
          
        ),
      ),
    );
  }
}