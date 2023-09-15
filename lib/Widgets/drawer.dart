import 'package:flutter/material.dart';

class Drawer_item extends StatelessWidget {
  Drawer_item(
      {super.key, this.tilecolor, required this.onTap, required this.title});

  final Color? tilecolor;
  final Row title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(tileColor: tilecolor, title: title, onTap: onTap);
  }
}
