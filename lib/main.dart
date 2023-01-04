import 'package:features/hive_tools.dart';
import 'package:features/indicating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(HiveGetText().hiveDatabaseName);
  // runApp(HooksGalleryApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: hiveRead(HiveGetText().hiveABoxKey)
      //     ? const HomePage()
      //     : const OnBoardingScreen(),
      home: const ExampleCupertinoDownloadButton(),
    );
  }
}
