// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonClickLogic extends StatelessWidget {
  ButtonClickLogic({Key? key}) : super(key: key);

  String? errorMessage;
  bool futureOperation = true;

  static const BTN_START_SCANNER = 0,
      BTN_STOP_SCANNER = 1,
      BTN_START_SCANNING = 2,
      BTN_STOP_SCANNING = 3;

  Future<void> onClick(int id) async {
    try {
      errorMessage = null;
      switch (id) {
        case BTN_START_SCANNER:
          if (futureOperation) {
            // setState(() {
            //   // Locig
            // });
          }
          break;
        case BTN_STOP_SCANNER:
          if (futureOperation) {
            // setState(() {
            //   // Locig
            // });
          }
          break;
      }
    } catch (e) {
      // setState(() {
      //   errorMessage = e.toString();
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => onClick(BTN_START_SCANNER),
            child: const Text("START")),
        ElevatedButton(
            onPressed: () => onClick(BTN_STOP_SCANNER),
            child: const Text("STOP")),
      ],
    );
  }
}
