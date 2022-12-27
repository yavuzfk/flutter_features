import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({Key? key}) : super(key: key);

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {

  String data = "";
  String? _data;
  void scanQrCode() {
    FlutterBarcodeScanner.scanBarcode("#000000", "Cancel", true, ScanMode.QR).then((value) {
      setState(() {
        data = value;
        _data = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  scanQrCode();
                }, child: const Text('QR Reader')),
                ElevatedButton(onPressed: () {
                 setState(() {
                   _data = data;
                 });
                }, child: const Text('Get The Data')),
                Text('Received value from QR: ${_data ?? ""}'),
              ],
            ),
          ),
    );
  }
}
