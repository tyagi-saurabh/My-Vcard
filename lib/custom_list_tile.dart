import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget icon;
  final Widget text;
  const CustomListTile({Key key, @required this.icon, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: text,
    );
  }
}
