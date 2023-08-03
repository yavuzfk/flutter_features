import 'package:flutter_features/list/selected_items.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  late List<ListData> dataList;
  late List<ListData> dataListTemp;

  late final TextEditingController _controller;
  bool isSelected = false;
  List<ListData> selectedData = <ListData>[];

  @override
  void initState() {
    dataList = fillDataList();
    dataListTemp = dataList;
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  "GİTTİĞİN ÜLKELERİ SEÇ",
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
                searchBar(),
                SizedBox(
                  height: context.dynamicHeight(0.62),
                  child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        ListData? listData = dataList[index];
                        isSelected = listData.selected;
                        return Card(
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                listData.selected = !listData.selected;
                              });
                            },
                            title: Text(listData.data ?? "_"),
                            leading: selectionIcons(listData.selected),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            List<ListData> selectedList = <ListData>[];
            for (int i = 0; i < dataList.length; i++) {
              if (dataList[i].selected == true) {
                selectedList.add(dataList[i]);
              }
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SelectedItemsPage(selectedList: selectedList)));
          },
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 23, 20, 173),
          splashColor: Colors.blueGrey.shade800,
          child: const Icon(Icons.done_all_outlined),
        ),
      ),
    );
  }

  List<ListData> fillDataList() {
    List<ListData> tempList = <ListData>[];

    ListData data1 = ListData(id: 1, data: "Fransa");
    ListData data2 = ListData(id: 2, data: "Türkiye");
    ListData data3 = ListData(id: 3, data: "Çin");
    ListData data4 = ListData(id: 4, data: "Japonya");
    ListData data5 = ListData(id: 5, data: "Almanya");
    ListData data6 = ListData(id: 6, data: "Slovakya");
    ListData data7 = ListData(id: 7, data: "Rusya");
    ListData data8 = ListData(id: 8, data: "Ukrayna");
    ListData data9 = ListData(id: 9, data: "Belarus");
    ListData data10 = ListData(id: 10, data: "Kuzey Kore");

    tempList.add(data1);
    tempList.add(data2);
    tempList.add(data3);
    tempList.add(data4);
    tempList.add(data5);
    tempList.add(data6);
    tempList.add(data7);
    tempList.add(data8);
    tempList.add(data9);
    tempList.add(data10);
    return tempList;
  }

  Widget selectionIcons(bool isSelected) {
    return Icon(
      isSelected ? Icons.check_box : Icons.check_box_outline_blank,
      color: Theme.of(context).primaryColor,
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: context.dynamicWidth(1) - 48,
              child: TextField(
                textInputAction: TextInputAction.go,
                onSubmitted: (value) {
                  dataList = dataListTemp;
                },
                controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Gittiğin Ülkeleri Seç',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.deepOrange)),
                ),
                onChanged: searchStaff,
              )),
        ],
      ),
    );
  }

  searchStaff(String query) {
    setState(() {
      final input = query.toLowerCase();
      dataList = dataListTemp.where((element) {
        return element.data!.toLowerCase().contains(input);
      }).toList();
    });
  }
}

class ListData {
  int? id;
  String? data;
  bool selected = false;

  ListData({this.id, this.data});
}
