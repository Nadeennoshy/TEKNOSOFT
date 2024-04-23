import 'dart:math';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final int age;
  final int height;
  final int weight;
  final bool isMale;
  const ResultView({super.key, required this.age, required this.height, required this.weight,required this.isMale});
  
  @override
  Widget build(BuildContext context) {
  double bmi = weight/pow(height/100, 2);
  String bmiText = bmi.toStringAsFixed(1);
  String result = '';
  String resultRange = '';
  if(bmi<18.5){
    result = 'Underweight';
    resultRange = 'less than 18.5';
  }else if(bmi>=18.5 && bmi<25){
    result = 'Normal';
    resultRange = '18.5-24.9';
  }else if(bmi>=25 && bmi<30){
    result = 'Overweight';
    resultRange = '25-29.9';
  }else if(bmi>=30){
    result = 'Obese';
    resultRange =' >= 30';
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
            const Text('Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const Text('Your BMI is'),
                  const SizedBox(height: 20,),
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
                        Text(bmiText,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        const Text('kg/m2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(result,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 350,
                    height: 100,
                     decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.50),
                            offset: const Offset(1,1),
                            blurRadius: 4,
                          )
                        ]
                          ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(isMale?Icons.man:Icons.woman,size: 30,),
                            Text('$age'),
                            Text('$height'),
                            Text('$weight'),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Text(isMale?'Male':'Female',style: const TextStyle(color: Colors.grey),),
                            const Text('Age',style: TextStyle(color: Colors.grey),),
                            const Text('Height',style: TextStyle(color: Colors.grey),),
                            const Text('Weight',style: TextStyle(color: Colors.grey),),
                          ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.50),
                            offset: const Offset(1,1),
                            blurRadius: 4,
                          )
                        ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Text.rich(
                              TextSpan(
                                text:  'A BMI of   ',
                                children: [
                                  TextSpan(
                                    text: resultRange,
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  const TextSpan(
                                    text: ' indicates that your',
                                  )
                                ]
                              ),
                             ),
                             Text.rich(
                              TextSpan(
                                text: 'weight is in the ',
                                children: [
                                  TextSpan(
                                    text: result,
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  const TextSpan(
                                    text: ' category for a',
                                  ),
                                ]
                              ),
                             ),
                              const Text('person of your height'),
                              const SizedBox(height: 30,),
                              const Text('Maintaining a healthy weight reduce the '),
                              const Text('risk of disease associated with '),
                              const Text('overweight and obesity'),
                            ],
                          ),
                  ),
                  SizedBox(height: 20,),
                 SizedBox(
                  width: 300,
                  height: 60,
                   child: ElevatedButton(
                         onPressed: (){
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
                             SizedBox(width: 10,),
                             Icon(Icons.refresh,color: Colors.white,)
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