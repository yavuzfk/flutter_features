import 'package:flutter/material.dart';

// import 'package:app_launcher/app_launcher.dart';

class TrigerAnotherApp extends StatelessWidget {
  const TrigerAnotherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Launcher Example'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // await AppLauncher.openApp(
                  //   androidApplicationId: "com.whatsapp",
                  // );
                },
                child: const Text('Open WhatsApp'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  // final value = await AppLauncher.hasApp(
                  //   androidApplicationId: "org.videolan.vlc",
                  // );

                  // print(value);
                },
                child: const Text('Check for VLC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
