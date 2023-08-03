import 'package:flutter_features/atomic_design/view/component/button/welcome_login_button.dart';
import 'package:flutter/material.dart';

class LoginViewAtomic extends StatefulWidget {
  const LoginViewAtomic({Key? key}) : super(key: key);

  @override
  _LoginViewAtomicState createState() => _LoginViewAtomicState();
}

class _LoginViewAtomicState extends State<LoginViewAtomic> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); Build ile sarmak gerekirse
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Atomic Design")),
      // key: scaffoldKey,
      body: Center(child: WelcomeLoginButton(
        onCompleted: (user, errorMessage) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("ddd")));
        },
      )),
    );
  }
}
