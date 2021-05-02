import 'package:flutter/material.dart';

class PathwayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PathwayPageState();
  }
}

class PathwayPageState extends State<PathwayPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget titleSection = Container(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Text(
          'Pathway to Success',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
            fontSize: 26,
          ),
        ),
      ));

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
                titleSection,
                analysisSection,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

}
