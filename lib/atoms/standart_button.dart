import 'package:flutter/material.dart';

class StandartButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const StandartButton({Key? key, required this.child, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
          onPressed: onPressed,
          child: child,
      ),
    );
  }
}
