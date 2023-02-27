import 'package:features/list/list_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SelectedItemsPage extends StatefulWidget {
  const SelectedItemsPage({Key? key, required this.selectedList})
      : super(key: key);
  final List<ListData> selectedList;
  @override
  _SelectedItemsPageState createState() => _SelectedItemsPageState();
}

class _SelectedItemsPageState extends State<SelectedItemsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  "GİTTİĞİN ÜLKELER",
                  style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.blueGrey.shade800,
                            const Color.fromARGB(255, 23, 20, 173),
                          ],
                        ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.62),
                  child: ListView.builder(
                      itemCount: widget.selectedList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(widget.selectedList[index].data ?? "_"),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 23, 20, 173),
          splashColor: Colors.blueGrey.shade800,
          child: const Text("Devam Et"),
        ),
      ),
    );
  }

  Widget selectionIcons(bool isSelected) {
    return Icon(
      isSelected ? Icons.check_box : Icons.check_box_outline_blank,
      color: Theme.of(context).primaryColor,
    );
  }
}
