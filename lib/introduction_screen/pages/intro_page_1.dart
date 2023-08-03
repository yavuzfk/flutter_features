import 'package:flutter_features/introduction_screen/widget/intro_page_controller.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    const String imagePath = 'assets/flying_around.png';
    const String title = 'Pegasus Hava Yolları ile \nUçuşa Hoş Geldiniz';
    const String text =
        'Uçuşunuzun Keyfini Çıkarın!! Deneyimli kabin ekibimiz ve THY den kalan uçaklarımızla keyifli uçuşlar';

    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: IntroPageContent(
          imagePath: imagePath,
          title: title,
          text: text,
        ),
      )),
    );
  }
}
