// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:study_sensei/Pages/calendar.dart';

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
    return HomePage();
  }
}

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    'Navigation',
                    style: TextStyle(
                        color: Colors.black,
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
            ListTile(
              tileColor: Colors.cyan,
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarPage()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Study Sensei'),
        elevation: 5,
        backgroundColor: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
