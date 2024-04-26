import 'package:bmi_calculater/component/age_weight_part.dart';
import 'package:bmi_calculater/component/gender_part.dart';
import 'package:bmi_calculater/component/height_part.dart';
import 'package:bmi_calculater/models/user_model.dart';
import 'package:bmi_calculater/views/result_view.dart';
import 'package:bmi_calculater/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserModel userModel =
      UserModel(height: 155, weight: 50, age: 22, isMale: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          GenderPart(
            selectedMale: userModel.isMale,
            selectedFemale: userModel.isMale ? false : true,
            maleOnTap: () {
              setState(() {
                userModel.isMale = true;
              });
            },
            femaleOnTap: () {
              setState(() {
                userModel.isMale = false;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          HeightPart(
              height: userModel.height,
              onChange: (value) {
                setState(() {
                  userModel.height = value;
                });
              }),
          const SizedBox(
            height: 10,
          ),
          AgeAndWeightPart(
              age: userModel.age,
              weight: userModel.weight,
              ageDecrement: () {
                setState(() {
                  userModel.age--;
                });
              },
              ageIncrement: () {
                setState(() {
                  userModel.age++;
                });
              },
              onChange: (value) {
                setState(() {
                  userModel.weight = value;
                });
              }),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ResultView(
                        age: userModel.age,
                        height: userModel.height,
                        weight: userModel.weight,
                        isMale: userModel.isMale,
                      );
                    },
                  ),
                );
              },
              buttonText: 'CALCULATE BMI')
        ],
      ),
    );
  }
}
