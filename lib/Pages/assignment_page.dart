import 'package:flutter/material.dart';
import 'package:study_sensei/Widgets/assignment.dart';

class Assignment_page extends StatefulWidget {
  Assignment_page({super.key});

  @override
  State<Assignment_page> createState() => _Assignment_pageState();
}

class _Assignment_pageState extends State<Assignment_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFBBB6A5),
        title: const Text('Assignments'),
      ),
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )),
    );
  }
}
