import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text(""))
        ],
      ),
    );
  }
}
