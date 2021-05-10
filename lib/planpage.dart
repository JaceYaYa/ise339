import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:layout/DatabaseManager/DatabaseManager.dart';

class PlanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlanPageState();
  }
}

class PlanPageState extends State<PlanPage> {
  String _vision;
  String _dropdowntraininggoals;
  String _dropdownmentalgoals;
  String _dropdowncoursegoals;
  String _dropdownfungoals;
  String _dropdownoverallvalue;
  String _dropdownlevelvalue;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _vision1 = TextEditingController();
  TextEditingController _dropdowntraininggoals1 = TextEditingController();
  TextEditingController _dropdownmentalgoals1 = TextEditingController();
  TextEditingController _dropdowncoursegoals1 = TextEditingController();
  TextEditingController _dropdownfungoals1 = TextEditingController();
  TextEditingController _dropdownoverallvalue1 = TextEditingController();
  TextEditingController _dropdownlevelvalue1 = TextEditingController();

  List userProfilesList = [];

  String userID = "";

  @override
  void initState() {
    super.initState();
    fetchUserInfo();
    fetchDatabaseList();
  }

  fetchUserInfo() async {
    FirebaseUser getUser = await FirebaseAuth.instance.currentUser();
    userID = getUser.uid;
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getUsersList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  updateData(String a, String b, String c, String d, String e, String f,
      String g, String uid) async {
    await DatabaseManager().createUserData(
        _vision,
        _dropdowntraininggoals,
        _dropdownmentalgoals,
        _dropdowncoursegoals,
        _dropdownfungoals,
        _dropdownoverallvalue,
        _dropdownlevelvalue,
        userID);
    fetchDatabaseList();
  }

  Widget buildvision() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'What I will Accomplish and Experience',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: new BorderSide(),
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Input is Required';
        }
        return null;
      },
      onChanged: (val) {
        setState(
          () {
            _vision = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildtraindropdown() {
    return DropdownButton(
      hint: _dropdowntraininggoals == null
          ? Text('State how many days you will do, 0 to 7')
          : Text(
              _dropdowntraininggoals,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdowntraininggoals = val;
          },
        );
      },
    );
  }

  Widget buildmentaldropdown() {
    return DropdownButton(
      hint: _dropdownmentalgoals == null
          ? Text('State how many days you will do, 0 to 7')
          : Text(
              _dropdownmentalgoals,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdownmentalgoals = val;
          },
        );
      },
    );
  }

  Widget buildcoursedropdown() {
    return DropdownButton(
      hint: _dropdowncoursegoals == null
          ? Text('State how many days you will do, 0 to 7')
          : Text(
              _dropdowncoursegoals,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdowncoursegoals = val;
          },
        );
      },
    );
  }

  Widget buildfundropdown() {
    return DropdownButton(
      hint: _dropdownfungoals == null
          ? Text('State how many days you will do, 0 to 7')
          : Text(
              _dropdownfungoals,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdownfungoals = val;
          },
        );
      },
    );
  }

  Widget buildoveralldropdown() {
    return DropdownButton(
      hint: _dropdownoverallvalue == null
          ? Text('State how many days you will do, 0 to 10')
          : Text(
              _dropdownoverallvalue,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdownoverallvalue = val;
          },
        );
      },
    );
  }

  Widget buildleveldropdown() {
    return DropdownButton(
      hint: _dropdownlevelvalue == null
          ? Text('State how many days you will do, 0 to 7')
          : Text(
              _dropdownlevelvalue,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropdownlevelvalue = val;
          },
        );
      },
    );
  }

  Widget titleSection = Container(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Text(
          'Weekly Success Plan',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
            fontSize: 26,
          ),
        ),
      ));

  Widget title2Section = Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          'In the long run man hits only what he aims for. '
          'Henry David Thoreau',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
            fontSize: 15,
          ),
        ),
      ));

  Widget visionSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'My Vision of Week Ahead - What I will Accomplish and Experience',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget trainingSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Training Performance Goals - What I will Do to Bring this About: ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget mentalSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Mental Fitness Goals - What I will Do to Bring this About: ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget courseworkSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Course Work Goals - What I will Do to Bring this About: ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget recreationalSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Recreational/Fun Goals - What I will Do to Bring this About: ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget overallSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Goal for Overall Performance Rating: ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
  );

  Widget levelSection = Container(
    padding: const EdgeInsets.all(15),
    child: Text(
      'Goal for Level of Satisfaction/Happiness: ',
      style: TextStyle(
        color: Colors.black,
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
                title2Section,
                visionSection,
                buildvision(),
                trainingSection,
                buildtraindropdown(),
                mentalSection,
                buildmentaldropdown(),
                courseworkSection,
                buildcoursedropdown(),
                recreationalSection,
                buildfundropdown(),
                overallSection,
                buildoveralldropdown(),
                levelSection,
                buildleveldropdown(),
                SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    submitAction(context);
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  submitAction(BuildContext context) {
    updateData(
        _vision1.text,
        _dropdowntraininggoals1.text,
        _dropdownmentalgoals1.text,
        _dropdowncoursegoals1.text,
        _dropdownfungoals1.text,
        _dropdownoverallvalue1.text,
        _dropdownlevelvalue1.text,
        userID);
    _vision1.clear();
    _dropdowntraininggoals1.clear();
    _dropdownmentalgoals1.clear();
    _dropdowncoursegoals1.clear();
    _dropdownfungoals1.clear();
    _dropdownoverallvalue1.clear();
    _dropdownlevelvalue1.clear();
  }
}
