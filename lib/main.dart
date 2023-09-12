import 'package:flutter/material.dart';
import 'package:flutter_features/animation/deneme.dart';
import 'package:flutter_features/animation/keyboard_opening_animation.dart';

import 'dropdown_button/dropdown_view.dart';
import 'home_widget/home_widget_view.dart';

void main() async {
  // await Hive.initFlutter();
  // await Hive.openBox(HiveGetText().hiveDatabaseName);
  // runApp(HooksGalleryApp());
  // runApp(const MyApp());
  runApp(const MaterialApp(home: KeyboardOpeningAnimation()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: hiveRead(HiveGetText().hiveABoxKey)
      //     ? const HomePage()
      //     : const OnBoardingScreen(),
      home: const DropdownView(),
    );
  }
}
