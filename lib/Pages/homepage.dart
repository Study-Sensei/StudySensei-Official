// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:study_sensei/Pages/assignment_page.dart';
import 'package:study_sensei/Pages/calendar.dart';
import 'package:study_sensei/Pages/settings.dart';
import 'package:study_sensei/Widgets/drawer.dart';

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
                      style: TextStyle(fontSize: 30.0),
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
                      style: TextStyle(fontSize: 30.0),
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
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Study Sensei'),
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
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0XFFBBB6A5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Upcoming Assignments',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, right: 30.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Color(0XFF8C9491),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
