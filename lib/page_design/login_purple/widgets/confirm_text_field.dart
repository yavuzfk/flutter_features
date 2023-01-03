import 'package:features/page_design/login_purple/login_purple.dart';
import 'package:flutter/material.dart';

class PasswordConfirmTextField extends StatelessWidget {
  const PasswordConfirmTextField({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = true;
    return Padding(
      padding: LoginPageSizes().textFieldBottomPadding,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: LoginPageSizes().textFieldBorderRadius,
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  // setState(() {
                  //   isPasswordVisible = !isPasswordVisible;
                  // });
                },
                icon: isPasswordVisible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility))),
        obscureText: isPasswordVisible,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
