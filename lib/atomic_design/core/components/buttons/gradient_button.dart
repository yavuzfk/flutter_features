import 'package:features/atoms/gradieng_button.dart';
import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const GradientButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ProjectDecorations().gradientButtonDecoration,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            disabledForegroundColor: Colors.transparent.withOpacity(0.38),
            disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
            shadowColor: Colors.transparent,
          ),
          child: Center(
            child: Text(
              title,
              style: ProjectStyles().darkButtonTextStyle,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
