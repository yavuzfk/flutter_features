import 'package:flutter/material.dart';

import '../../dropdown_view.dart';

class DropdownCallback extends StatefulWidget {
  const DropdownCallback({Key? key, required this.onChanged}) : super(key: key);
  final void Function(UserModel) onChanged; // veri dönmiciiz
  @override
  _DropdownCallbackState createState() => _DropdownCallbackState();
}

class _DropdownCallbackState extends State<DropdownCallback> {
  UserModel? _selectedUser;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<UserModel>(
      value: _selectedUser,
      items: UserModel.dummyList()
          .map((e) => DropdownMenuItem<UserModel>(
                value: e,
                child: Text(e.name),
              ))
          .toList(),
      onChanged: (UserModel? user) {
        setState(() {
          _selectedUser = user;
          if (user != null) widget.onChanged(user);
        });
      },
    );
  }
}
