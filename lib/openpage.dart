import 'package:flutter/material.dart';
import 'dart:async';
import 'loginpage.dart';

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Center(
                      child: Text(
                        'SUCCESS IN MIND',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                        ),
                      ),
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Center(
                      child: Text(
                        "The Student -Athlete’s Pathway to Success",
                        style: TextStyle(
                          color: Colors.grey[1000],
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    /*Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );*/

    Widget text1Section = Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Text(
            'Success is peace of mind that is a direct result of '
                'self satisfaction in knowing that you made the effort '
                'to become the best you’re capable of becoming.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[1000],
              fontSize: 16,
            ),
          ),
        )
    );

    Widget text2Section = Container(
        padding: const EdgeInsets.all(1),
        child: Center(
          child: Text(
            'John Wooden',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
    );

    Widget text3Section = Container(
        padding: const EdgeInsets.all(1),
        child: Center(
          child: Text(
            'John J. Bowman, PHD',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
    );

    Widget text4Section = Container(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            'Sports Psychology Services',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            titleSection,
            Image.asset(
              'assets/images/download.jpg',
              width: 183,
              height: 275,
              fit: BoxFit.cover,
            ),
            text1Section,
            text2Section,
            Image.asset(
              'assets/images/sbulogo.jpg',
              width: 357,
              height: 68,
              fit: BoxFit.cover,
            ),
            text3Section,
            text4Section,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}