// import 'package:flutter/material.dart';
// import 'package:inflight_app/entity/parameter.dart';
// import 'package:inflight_app/utility/button_styles.dart';
// import 'package:inflight_app/utility/color_items.dart';
// import 'package:inflight_app/utility/text_items.dart';
// import 'package:inflight_app/utility/text_styles.dart';

// import '../../utility/hive_tools.dart';

// class ParameterPage extends StatefulWidget {
//   const ParameterPage({Key? key}) : super(key: key);

//   @override
//   State<ParameterPage> createState() => _ParameterPageState();
// }

// class _ParameterPageState extends State<ParameterPage> {
//   late TextEditingController _controller;
//   bool? seatSelection;
//   bool? productIncrementSelection;

//   bool isSwitchedSeatSelection = false;
//   var seatSelectionText = 'Seat Selection is CANCELED';

//   bool isSwitchedIncrementNotification = false;
//   var incrementNotText = '+|- Notification is CANCELED';

//   void toggleSwitchSeat(bool value) {
//     if (isSwitchedSeatSelection == false) {
//       setState(() {
//         isSwitchedSeatSelection = true;
//         seatSelectionText = 'Seat Selection is ACTIVATED';
//       });
//       // print('Seat Selection is ACTIVATED');
//     } else {
//       setState(() {
//         isSwitchedSeatSelection = false;
//         seatSelectionText = 'Seat Selection is CANCELED';
//       });
//       // print('Seat Selection is CANCELED');
//     }
//   }

//   void toggleSwitchIncrement(bool value) {
//     if (isSwitchedIncrementNotification == false) {
//       setState(() {
//         isSwitchedIncrementNotification = true;
//         incrementNotText = '+|- Notification is ACTIVATED';
//       });
//       // print('Seat Selection is ACTIVATED');
//     } else {
//       setState(() {
//         isSwitchedIncrementNotification = false;
//         incrementNotText = '+|- Notification is CANCELED';
//       });
//       // print('Seat Selection is CANCELED');
//     }
//   }

//   @override
//   void initState() {
//     _controller = TextEditingController();
//     getApiUrl();
//     seatSelection = true;
//     productIncrementSelection = true;
//     super.initState();
//   }

//   void getApiUrl() {
//     var url = hiveRead(hive_get().hiveApiBoxKey);
//     AppParametres param = AppParametres.fromJson(url);
//     setState(() {
//       _controller.text = param.apiUrl == null ? "" : param.apiUrl.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       const SizedBox(height: 4),
//                       TextField(
//                         controller: _controller,
//                         decoration: InputDecoration(
//                           border: const OutlineInputBorder(),
//                           labelText: TextItems().textFieldTitle,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.05),
//                   // Column(
//                   //   children: [
//                   //     Row(
//                   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //       children: [
//                   //         Text(seatSelectionText, style: const TextStyle(fontSize: 16)),
//                   //         Switch(
//                   //           onChanged: toggleSwitchSeat,
//                   //           value: isSwitchedSeatSelection,
//                   //           activeColor: Colors.black,
//                   //           activeTrackColor: Colors.black12,
//                   //           inactiveThumbColor: ColorItems.appBarBackColor,
//                   //           inactiveTrackColor: Colors.black12,
//                   //         ),
//                   //
//                   //       ],
//                   //     ),
//                   //     const Divider(
//                   //       color: ColorItems.appBarBackColor,
//                   //       thickness: 1,
//                   //     ),
//                   //     Row(
//                   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //       children: [
//                   //         Text(incrementNotText, style: const TextStyle(fontSize: 16)),
//                   //
//                   //         Switch(
//                   //           onChanged: toggleSwitchIncrement,
//                   //           value: isSwitchedIncrementNotification,
//                   //           activeColor: Colors.black,
//                   //           activeTrackColor: Colors.black12,
//                   //           inactiveThumbColor: ColorItems.appBarBackColor,
//                   //           inactiveTrackColor: Colors.black12,
//                   //         ),
//                   //
//                   //       ],
//                   //     ),
//                   //   ],
//                   // ),
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.15),
//                   SizedBox(
//                     height: 50,
//                     width: 190,
//                     child: saveButton(),
//                   ),
//                   SizedBox(height: 16),
//                   SizedBox(
//                     height: 50,
//                     width: 190,
//                     child: ElevatedButton(
//                         style: ButtonStyles.buttonStyle,
//                         onPressed: () {
//                           hiveDelete(hive_get().hiveFlightBoxKey);
//                         },
//                         child: Text("Clear Flight" ,style: TextStyles().smallWhiteTextStyle)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   GestureDetector incrementSelectionWidget(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showDialog<String>(
//           context: context,
//           builder: (BuildContext context) => AlertDialog(
//             title: const Text(
//                 'Increment Notification Operation will be Changed ?'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'Cancel'),
//                 child: const Text('Cancel'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   setState(() {
//                     productIncrementSelection = !productIncrementSelection!;
//                   });
//                   Navigator.pop(context);
//                 },
//                 child: const Text('OK'),
//               ),
//             ],
//           ),
//         );
//       },
//       child: Row(
//         children: [
//           Text(
//             "Increment Notification ? ",
//             style: TextStyles().defaultBlackTextStyle,
//           ),
//           SizedBox.fromSize(
//             size: const Size.fromRadius(20),
//             child: FittedBox(
//               child:
//               Icon(productIncrementSelection! ? Icons.check : Icons.cancel),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   GestureDetector seatSelectionWidget(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showDialog<String>(
//           context: context,
//           builder: (BuildContext context) => AlertDialog(
//             title: const Text('Seat Selection Operation will be Changed ?'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'Cancel'),
//                 child: const Text('Cancel'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   setState(() {
//                     seatSelection = !seatSelection!;
//                   });
//                   Navigator.pop(context);
//                 },
//                 child: const Text('OK'),
//               ),
//             ],
//           ),
//         );
//       },
//       child: Row(
//         children: [
//           Text(
//             "Seat Selection Option? ",
//             style: TextStyles().defaultBlackTextStyle,
//           ),
//           SizedBox.fromSize(
//             size: const Size.fromRadius(20),
//             child: FittedBox(
//               child: Icon(seatSelection! ? Icons.check : Icons.cancel),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   ElevatedButton saveButton() {
//     return ElevatedButton(
//       style: ButtonStyles.buttonStyle,
//       child: Text('save', style: TextStyles().smallWhiteTextStyle),
//       onPressed: () async {
//         AppParametres param = AppParametres(apiUrl: _controller.text);
//         //Save the APi Url which entered by user
//         await hiveWrite(hive_get().hiveApiBoxKey, param.toJson());
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text("Api Url Kaydedildi"),
//           ),
//         );
//       },
//     );
//   }
// }
