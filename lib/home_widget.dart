import 'package:flutter/material.dart';
import 'package:layout/homepage.dart';
import 'package:layout/planpage.dart';
import 'package:layout/journalpage.dart';
import 'package:layout/summaryplan.dart';
import 'package:layout/pathwaypage.dart';
import 'package:layout/plantutorial.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex=0;
  final List<Widget> _children=[HomePage(),PlanPage(),JournalPage(),SummaryPage(),PathwayPage(),];
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items:[
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: new Text("Plan"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.assignment_turned_in),
              title: new Text("Journal"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.bar_chart),
              title: new Text("Summary"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.follow_the_signs),
              title: new Text("Pathway"),
            ),
          ]
      ),
    );
  }
  void onTabTapped(int index){
    setState((){
      _currentIndex=index;
    });
  }
}