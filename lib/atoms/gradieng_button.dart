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
      width: 120,
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

class ProjectDecorations {
  Decoration gradientButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    gradient: LinearGradient(
      begin: const Alignment(-0.95, 0.0),
      end: const Alignment(1.0, 0.0),
      colors: [
        Colors.blueGrey.shade800,
        const Color.fromARGB(255, 23, 20, 173),
      ],
      stops: const [0.0, 1.0],
    ),
  );
  Decoration squareButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(70.0),
    color: const Color.fromARGB(255, 142, 6, 9),
  );

  Decoration slimBorderDecoration = BoxDecoration(
    border: Border.all(color: const Color.fromARGB(255, 17, 84, 107), width: 1),
    borderRadius: BorderRadius.circular(5),
    shape: BoxShape.rectangle,
  );
}

class ProjectStyles {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    disabledForegroundColor: Colors.transparent.withOpacity(0.38),
    disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
    shadowColor: Colors.transparent,
  );

  TextStyle darkButtonTextStyle = const TextStyle(
    fontSize: 16,
    color: Color(0xffffffff),
    letterSpacing: -0.1,
  );

  TextStyle lightButtonTextStyle = const TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 24, 1, 1),
    letterSpacing: -0.3858822937011719,
  );
}
