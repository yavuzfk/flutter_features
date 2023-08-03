// import 'package:another_flushbar/flushbar.dart';
// import 'package:flutter/material.dart';

// class FlashBarMessage extends StatefulWidget {
//   const FlashBarMessage({super.key});

//   @override
//   State<FlashBarMessage> createState() => _FlashBarMessageState();
// }

// class _FlashBarMessageState extends State<FlashBarMessage> {
//   // Paket kullanimi gerekiyor.!!
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//               onPressed: () async {
//                 await Flushbar(
//                   margin: const EdgeInsets.all(8),
//                   borderRadius: BorderRadius.circular(8),
//                   title: 'Hey Ninja',
//                   message:
//                       'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
//                   duration: const Duration(seconds: 3),
//                   leftBarIndicatorColor: Colors.blue[300],
//                 ).show(context);
//               },
//               child: const Text('Get Message'))
//         ],
//       )),
//     );
//   }
// }

// void getFlushBar() async {}
