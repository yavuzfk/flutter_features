import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextFormField(
             decoration: const InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Email'
             ),
           ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
           TextFormField(
             decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Password'
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height * 0.03),
           ElevatedButton(onPressed: () {

           }, child: const Text('Save')),
         ],
        ),
      ),
    );
  }
}
