// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QrRead extends StatefulWidget {
//   const QrRead({super.key});

//   @override
//   State<StatefulWidget> createState() => _QrReadState();
// }

// class _QrReadState extends State<QrRead> {
//   Barcode? result;
//   QRViewController? controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   String abc = "";

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() => this.controller = controller);
//     controller.scannedDataStream.listen((scanData) {
//       setState(() => result = scanData);
//     });
//   }

//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller!.pauseCamera();
//     }
//   }

//   void readQr() async {
//     if (result != null) {
//       controller!.pauseCamera();
//       setState(() {
//         // abc = result!.code ?? "";
//         abc = utf8.decode(base64.decode(result!.code!.replaceAll("\"", "")));
//       });
//       print(result!.code);
//       controller!.dispose();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     readQr();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(abc),
//       ),
//       body: QRView(
//         key: qrKey,
//         onQRViewCreated: _onQRViewCreated,
//         overlay: QrScannerOverlayShape(
//           borderColor: Colors.orange,
//           borderRadius: 10,
//           borderLength: 30,
//           borderWidth: 10,
//           cutOutSize: 250,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
