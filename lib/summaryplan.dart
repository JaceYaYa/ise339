import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:share/share.dart';

class SummaryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SummaryPageState();
  }
}

class SummaryPageState extends State<SummaryPage> {
  final _screenshotController = ScreenshotController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget titleSection = Container(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Text(
          'Weekly Success Summary',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
            fontSize: 26,
          ),
        ),
      ));


  Widget goalSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Goal Achieved Summary:',
      style: TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
    ),
  );

  Widget analysisSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Goal Achievement Analysis',
      style: TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
    ),
  );

  Widget journalSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Well Journal',
      style: TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
    ),
  );

  Widget mentalSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Mental Fitness Record',
      style: TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
    ),
  );

  Widget overallSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Performance/Satisfaction Levels',
      style: TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 15,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Screenshot(
                  controller: _screenshotController,
                  child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Image.asset('assets/images/download.jpg'),
                            Text(
                              'Code Passionately',
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ),
                TextButton(
                  child: Text('Take Screenshot and Share'),
                  onPressed: _takeScreenshot,
                ),

                titleSection,
                goalSection,
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '1. Training/Performance Goals:',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/ //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '2. Mental Fitness Goals:',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/ //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '3. Course Work Goals:',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/ //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '4. Recreation/Fun Goals:',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/ //Checkbox
                  ], //<Widget>[]
                ),
                analysisSection,
                journalSection,
                Image.asset(
                  'assets/images/my well.jpg',
                  fit: BoxFit.cover,
                ),
                mentalSection,
                Text(
                  "Dr.B's 5 C's   Intial MFA Level   Weekly Average",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Column(
                    children: [
                      Text(
                        "- Confidence ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "- Concentration ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "- Composure ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "- Challenge Response ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "- Commitment ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ]
                ),
                overallSection,
                Text(
                  "            Weekly Goal   Weekly Average",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Column(
                    children: [
                      Text(
                        "- Overall Performance Rating ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "- Overall Satisfaction/Happiness Rating ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),

                    ]
                ),
                RaisedButton(
                  child: Text(
                    'Share',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  File imageFile;
  File A;

  void _takeScreenshot() async {
    final imageFile = await _screenshotController.capture();
    final directory = (await getApplicationDocumentsDirectory()).path;
    File imgFile = new File('$directory/newfile.jpg');
    imgFile.writeAsBytes(imageFile);
    print("File Saved to Gallery");
    await Share.shareFiles([imgFile.path]);
  }

}
