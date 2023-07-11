import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:convert';

class QrCreate extends StatefulWidget {
  const QrCreate({super.key, required this.data});
  final data;

  @override
  State<QrCreate> createState() => _QrCreateState();
}

class _QrCreateState extends State<QrCreate> {
  final qrKey = GlobalKey();
  String qrData = "";

  @override
  void initState() {
    qrData = jsonEncode(widget.data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("hop"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RepaintBoundary(
                key: qrKey,
                child: QrImage(
                  data: qrData, //This is the part we give data to our QR
                  size: 250,
                  backgroundColor: Colors.white,
                  version: QrVersions.auto, //You can also give other versions
                ),
              )
            ],
          ),
        ));
  }
}
