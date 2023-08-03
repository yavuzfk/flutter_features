import 'package:flutter_features/atoms/gradieng_button.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SquareButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.16,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(70.0),
        //   color: const Color.fromARGB(255, 142, 6, 9),
        // ),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: ProjectStyles().lightButtonTextStyle,
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
