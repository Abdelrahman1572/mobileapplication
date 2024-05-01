import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/modules/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return EasySplashScreen(
        logo: Image.asset(
          'assets/images/Splash-removebg.png',
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
        gradientBackground: const LinearGradient(colors: [
          Colors.indigo,
          Colors.deepPurple,
        ]),
        title: Text(
          'Mobile Programming',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white,wordSpacing: 5,height: -3.5),
        ),
        showLoader: true,
        loaderColor: Colors.white,
        logoWidth: 350,
        loadingTextPadding: EdgeInsets.only(bottom: 25),
        loadingText: Text("Loading...",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),
        navigator: OnBoardingScreen(),
        durationInSeconds: 3,
    );
  }
}
