import 'package:flowers_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: screenSize.height * .70,
              child: Image.asset(
                "assets/images/onboarding.png",
                fit: BoxFit.fill,
                width: screenSize.width,
                height: screenSize.height * .70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Worldwid delivery \n with 10 - 15 days",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton(
                child: const Text(
                  "GO",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
