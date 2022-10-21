import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeAnimation extends StatefulWidget {
  const WelcomeAnimation({Key? key}) : super(key: key);

  @override
  State<WelcomeAnimation> createState() => _WelcomeAnimationState();
}

class _WelcomeAnimationState extends State<WelcomeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_BsQxil31px.json'),
      ),
    );
  }
}
