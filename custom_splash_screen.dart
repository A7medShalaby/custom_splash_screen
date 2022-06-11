import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String splashTitle;
  const SplashScreen({
    Key? key,
    required this.splashTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: AnimatedTextKit(
        animatedTexts: [
          //Splash Title & Style
          ColorizeAnimatedText(
            appbarTitle,
            textStyle: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w900,
              color: AppColors.pinkColor,
            ),
            //Color List Of AppbarTitle
            colors: [
              Colors.pink,
              Colors.purple,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.black,
              Colors.white,
            ],
            speed: const Duration(milliseconds: 1000),
          ),
        ],
      ),
      duration: 2500,
      //Put Your Next Screen Here
      nextScreen: OnBoardingScreen(),
    );
  }
}
