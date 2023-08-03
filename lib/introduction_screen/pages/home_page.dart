import 'package:flutter_features/hive_tools.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page Screen')),
      body: Center(
          child: ElevatedButton(
        child: const Text("Delete Hive Data"),
        onPressed: () {
          hiveDelete(HiveGetText().hiveABoxKey);
        },
      )),
    );
  }
}
