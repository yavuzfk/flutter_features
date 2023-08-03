import 'package:flutter/material.dart';

class FullScreenView extends StatefulWidget {
  const FullScreenView({Key? key}) : super(key: key);

  @override
  _FullScreenViewState createState() => _FullScreenViewState();
}

class _FullScreenViewState extends State<FullScreenView> {
  // void enterFullScreen(FullScreenMode fullScreenMode) async {
  //   await FullScreen.enterFullScreen(fullScreenMode);
  // }

  // void exitFullScreen() async {
  //   await FullScreen.exitFullScreen();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              child: const Text("full screen"),
              onPressed: () async {
                // enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
              },
            ),
            ElevatedButton(
              child: const Text("full screen"),
              onPressed: () async {
                // exitFullScreen();
              },
            ),
          ],
        )),
      ),
    );
  }
}
