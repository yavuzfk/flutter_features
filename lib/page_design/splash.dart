import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DesignSplash extends StatefulWidget {
  const DesignSplash({Key? key}) : super(key: key);

  @override
  _DesignSplashState createState() => _DesignSplashState();
}

class _DesignSplashState extends State<DesignSplash> {
  final Widget svgCircle = SvgPicture.asset('assets/yuvarlak_opak.svg');

  double diameterValue(BuildContext context) =>
      MediaQuery.of(context).size.width * 1.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 64, 59, 59), Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Stack(
          children: [
            Positioned(top: diameterValue(context) / 3.2, child: svgCircle),
            Positioned(
              top: diameterValue(context) / 2.2,
              right: diameterValue(context) / 110,
              child: svgCircle,
            ),
            Center(
              child: SizedBox(
                  width: 160,
                  height: 160,
                  child: Image.asset('assets/recipe_book_green.png')),
            ),
          ],
        ),
      ),
    );
  }
}
