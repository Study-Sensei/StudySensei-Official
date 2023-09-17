import 'package:flutter/material.dart';

class Assignment_page extends StatefulWidget {
  const Assignment_page({super.key});

  @override
  State<Assignment_page> createState() => _Assignment_pageState();
}

class _Assignment_pageState extends State<Assignment_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade400,
        title: Text('Assignments'),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
