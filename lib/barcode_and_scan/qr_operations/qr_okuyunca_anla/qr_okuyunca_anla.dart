import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  late final TextEditingController qrController;
  String qrText = "";
  @override
  void initState() {
    super.initState();
    qrController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    qrController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onSubmitted: ((value) {
              setState(() {
                qrText = qrController.text;
              });
            }),
            controller: qrController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "URL",
                prefixIcon: Icon(Icons.web_stories)),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
          Text(qrText),
        ],
      ),
    );
  }
}
