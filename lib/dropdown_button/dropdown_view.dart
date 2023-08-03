// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_features/dropdown_button/product/widgets/dropdown_callback.dart';

class DropdownView extends StatefulWidget {
  const DropdownView({Key? key}) : super(key: key);

  @override
  _DropdownViewState createState() => _DropdownViewState();
}

class _DropdownViewState extends State<DropdownView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownCallback(onChanged: (UserModel? user) {
          print(user!.name);
        }),
      ),
    );
  }
}

class UserModel {
  String name;
  int id;

  UserModel(this.name, this.id);

  static List<UserModel> dummyList() {
    return [UserModel("yavuz", 111), UserModel("Emir", 222)];
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
