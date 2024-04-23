import 'package:bmi_calculater/component/gender_part.dart';
import 'package:bmi_calculater/models/user_model.dart';
import 'package:bmi_calculater/views/result_view.dart';
import 'package:bmi_calculater/widgets/age_container.dart';
import 'package:bmi_calculater/widgets/custom_button.dart';
import 'package:bmi_calculater/widgets/height_container.dart';
import 'package:bmi_calculater/widgets/weight_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  UserModel userModel = UserModel(height: 155, weight: 50, age: 22, isMale: true);


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
          GenderPart(
            selectedMale: userModel.isMale, 
             selectedFemale: userModel.isMale?false:true, 
            maleOnTap: () { 
              setState(() {
                  userModel.isMale = true;
              });
             }, 
             femaleOnTap: () { 
                 setState(() {
                   userModel.isMale  = false;
                 });
              },),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Height (cm)',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          HeightContainer(
            minValue: 30,
            maxValue: 300,
            value: userModel.height,
            onChange: (value){
              setState(() {
                userModel.height = value;
              });
            },
          ),
          
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Age',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Weight (kg)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AgeContainer(
                age: userModel.age,
                ageIncrement: (){
                  setState(() {
                    userModel.age++;
                  });
                },
                ageDecrement: (){
                  setState(() {
                    userModel.age--;
                  });
                },
                ),
              WeightContainer(
                weight: userModel.weight,
                onChange: (value){
                  setState(() {
                    userModel.weight = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ResultView(
                          age: userModel.age, height: userModel.height, weight: userModel.weight,
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
