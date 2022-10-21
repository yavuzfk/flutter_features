import 'package:camera/camera.dart';
import 'package:features/bloc/login/view/login_view.dart';
import 'package:features/permissions/permission_operations.dart';
import 'package:features/take__save_show_picture/picture_operations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  const PictureOperations(),
    );
  }
}
