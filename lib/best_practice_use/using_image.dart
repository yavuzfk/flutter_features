import 'package:flutter/material.dart';

class UsingImage extends StatefulWidget {
  const UsingImage({Key? key}) : super(key: key);

  @override
  _UsingImageState createState() => _UsingImageState();
}

class _UsingImageState extends State<UsingImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Best Practice Image")),
      body: Center(child: Image.asset(ImageNames.logo_romsis.path())),
    );
  }
}

enum ImageNames { logo_romsis }

extension ImageNamesExtension on ImageNames {
  String path() {
    return 'assets/png/$name.png';
  }
}
