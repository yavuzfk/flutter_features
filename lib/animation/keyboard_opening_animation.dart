import 'package:flutter/material.dart';
import 'package:flutter_features/page_design/login.dart';
import 'package:kartal/kartal.dart';

class KeyboardOpeningAnimation extends StatefulWidget {
  const KeyboardOpeningAnimation({Key? key}) : super(key: key);

  @override
  _KeyboardOpeningAnimationState createState() =>
      _KeyboardOpeningAnimationState();
}

class _KeyboardOpeningAnimationState extends State<KeyboardOpeningAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dkdkdkd"),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: context.general.isKeyBoardOpen ? 130 : 300,
            color: Colors.amber,
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
                hintText: 'Enter your username'),
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your password',
                hintText: 'Enter your password'),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
              onPressed: () {
                context.route
                    .navigateToPage(const PageDesign(), type: SlideType.BOTTOM);
              },
              child: const Text('Login'))
        ]),
      ),
    );
  }
}
