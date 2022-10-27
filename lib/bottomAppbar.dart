


// class _DemoBottomAppBar extends StatefulWidget {
//   @override
//   State<_DemoBottomAppBar> createState() => _DemoBottomAppBarState();
// }
//
// class _DemoBottomAppBarState extends State<_DemoBottomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: ColorItems.appBarBackColor,
//       child: IconTheme(
//         data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
//         child: SizedBox(
//           height: 46,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isSelectedIncrement = !isSelectedIncrement;
//                   });
//                 },
//                 child: Row(
//                   children: [
//                     Icon(isSelectedIncrement ? Icons.check : Icons.cancel),
//                     Text(
//                       " Product Size Notification",
//                       style: TextStyles().smallWhiteTextStyle,
//                     )
//                   ],
//                 ),
//               ),
//               Text(
//                 "|",
//                 style: TextStyles().defaultTextStyle,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isSelectedSeatSelection = !isSelectedSeatSelection;
//                   });
//                 },
//                 child: Row(
//                   children: [
//                     Icon(isSelectedSeatSelection ? Icons.check : Icons.cancel),
//                     Text(
//                       " Seat Selection",
//                       style: TextStyles().smallWhiteTextStyle,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
