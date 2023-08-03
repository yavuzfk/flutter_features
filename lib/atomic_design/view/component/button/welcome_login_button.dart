import 'package:flutter_features/atomic_design/core/components/buttons/login_button.dart';
import 'package:flutter/material.dart';

class WelcomeLoginButton extends StatefulWidget {
  const WelcomeLoginButton({Key? key, required this.onCompleted})
      : super(key: key);
  final Function(User user, String errorMessage) onCompleted;
  @override
  _WelcomeLoginButtonState createState() => _WelcomeLoginButtonState();
}

class _WelcomeLoginButtonState extends State<WelcomeLoginButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      isLoading: isLoading,
      onPressed: () async {
        changeLoading();
        await Future.delayed(const Duration(seconds: 1));
        changeLoading();
        //MARK: if service response okkey
        widget.onCompleted(User(token: "deneme"), "no error");
      },
    );
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

class User {
  String? token;
  User({this.token});
}
