import 'package:flutter_features/page_design/login_purple/login_purple.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: LoginPageSizes().textFieldBottomPadding,
      child: TextField(
        controller: controller,
        autocorrect: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black), //<-- SEE HERE
            borderRadius: LoginPageSizes().textFieldBorderRadius,
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
