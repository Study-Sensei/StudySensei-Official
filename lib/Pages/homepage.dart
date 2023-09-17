// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:study_sensei/Pages/add_task_screen.dart';
import 'package:study_sensei/Pages/assignment_page.dart';
import 'package:study_sensei/Pages/calendar.dart';
import 'package:study_sensei/Pages/settings.dart';
import 'package:study_sensei/Widgets/drawer.dart';
import 'package:study_sensei/Widgets/task_list.dart';
import 'package:study_sensei/models/task_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = <Widget>[
    Icon(
      Icons.calendar_month,
      color: Colors.white,
    ),
    const Icon(Icons.assignment, color: Colors.white),
    const Icon(Icons.home, color: Colors.white),
    const Icon(Icons.table_chart_outlined, color: Colors.white),
    const Icon(Icons.add_task, color: Colors.white),
    const Icon(Icons.settings, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0XFF2A2F33),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150.0,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    'Navigation',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'MoonDance',
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Drawer_item(
              tilecolor: Color(0XFFBBB6A5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Assignment_page()));
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.assignment,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Assignments',
                      style: TextStyle(fontSize: 30.0, fontFamily: 'PlayFair'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Drawer_item(
              tilecolor: Color(0XFFBBB6A5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarPage()));
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.table_chart,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Calendar',
                      style: TextStyle(fontSize: 30.0, fontFamily: 'PlayFair'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Drawer_item(
              tilecolor: Color(0XFFBBB6A5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 30.0, fontFamily: 'PlayFair'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Study Sensei',
          style: TextStyle(fontFamily: 'PlayFair'),
        ),
        elevation: 5,
        backgroundColor: Color(0XFFBBB6A5),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Hey! Mayank',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.black,
                  fontFamily: 'MoonDance',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0XFFBBB6A5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: TasksList(),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '${Provider.of<TaskData>(context).taskCount} Assignments',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'PlayFair',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, right: 30.0, bottom: 30.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Color(0XFF8C9491),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: AddTaskScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
