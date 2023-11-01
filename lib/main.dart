import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routine_app_3_i/RoutineGenerate.dart';
import 'package:routine_app_3_i/Teachers.dart';

import 'Home.dart';
void main() {
  runApp(RoutineApp());
}

class RoutineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Routine App',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic)),
              bottom: TabBar(
                //isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home),text: 'Home'),
                  Tab(icon: Icon(Icons.radar_outlined),text: 'Routine generate'),
                  Tab(icon: Icon(Icons.ac_unit_rounded),text: 'Teachers'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Home(),
                RoutineGenerate(),
                Teachers(),
              ],
            ),
          ),
        ),
    );
  }
}

