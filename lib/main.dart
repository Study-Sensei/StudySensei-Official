// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:study_sensei/Pages/homepage.dart';
import 'package:provider/provider.dart';
import 'package:study_sensei/models/task_data.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'PlayFair'),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
