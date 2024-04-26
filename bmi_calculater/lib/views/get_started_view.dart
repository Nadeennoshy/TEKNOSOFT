import 'package:bmi_calculater/views/home_view.dart';
import 'package:bmi_calculater/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/start.png',
            ),
            const Text(
              'Welcome to BMI',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const Text('Best guide for Calculating'),
            const Text('your body mass index'),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomeView();
                      },
                    ),
                  );
                },
                buttonText: 'Get Started'),
          ],
        ),
      ),
    );
  }
}
