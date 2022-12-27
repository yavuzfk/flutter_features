import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// void main() => runApp(const MyApp());

class LottieExample extends StatefulWidget {
  const LottieExample({Key? key}) : super(key: key);

  @override
  State<LottieExample> createState() => _LottieExampleState();
}

class _LottieExampleState extends State<LottieExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [


            // Load a Lottie file from your assets
            Center(
              child: SizedBox(
                height: 200,
                  width: 200,
                  child: Lottie.asset('assets/loading.json')),
            ),

            // Load a Lottie file from a remote url
            // Lottie.network(
            //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
            //
            // // Load an animation and its images from a zip file
            // Lottie.asset('assets/lottiefiles/angel.zip'),
          ],
        ),
      ),
    );
  }
}