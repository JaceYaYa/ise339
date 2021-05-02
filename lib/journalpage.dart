import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:layout/DatabaseManager/DatabaseManager.dart';
import 'package:layout/DatabaseManager/DatabaseManager1.dart';
import 'package:layout/Services/AuthenticationService.dart';


class JournalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return JournalPageState();
  }
}

class JournalPageState extends State<JournalPage> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  String traingoals;
  String mentalgoals;
  String coursegoals;
  String recreationgoals;
  String _awesomevalue;
  String _greatvalue;
  String _happyvalue;
  String _confidentvalue;
  String _goodrestvalue;
  String _dropdownconfident;
  String _dropdownconcentration;
  String _dropdowncomposure;
  String _dropdownchallenge;
  String _dropdowncommitment;
  String _dropdownperformance;
  String _dropdownsatisfaction;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AuthenticationService _auth = AuthenticationService();

  TextEditingController traingoals1 = TextEditingController();
  TextEditingController mentalgoals1 = TextEditingController();
  TextEditingController coursegoals1 = TextEditingController();
  TextEditingController recreationgoals1 = TextEditingController();
  TextEditingController _awesomevalue1 = TextEditingController();
  TextEditingController _greatvalue1 = TextEditingController();
  TextEditingController _happyvalue1 = TextEditingController();
  TextEditingController _confidentvalue1 = TextEditingController();
  TextEditingController _goodrestvalue1 = TextEditingController();
  TextEditingController _dropdownconfident1 = TextEditingController();
  TextEditingController _dropdownconcentration1 = TextEditingController();
  TextEditingController _dropdowncomposure1 = TextEditingController();
  TextEditingController _dropdownchallenge1 = TextEditingController();
  TextEditingController _dropdowncommitment1 = TextEditingController();
  TextEditingController _dropdownperformance1 = TextEditingController();
  TextEditingController _dropdownsatisfaction1 = TextEditingController();

  List userProfilesList = [];

  String userID = "";

  @override
  void initState() {
    super.initState();
    fetch1UserInfo();
    fetch1DatabaseList();
  }

  fetch1UserInfo() async {
    FirebaseUser getUser = await FirebaseAuth.instance.currentUser();
    userID = getUser.uid;
  }

  fetch1DatabaseList() async {
    dynamic resultant = await DatabaseManager1().get1UsersList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  updateData(
      String a,
      String b,
      String c,
      String d,
      String e,
      String f,
      String g,
      String h,
      String i,
      String j,
      String k,
      String l,
      String m,
      String n,
      String o,
      String p,
      String uid) async {
    await DatabaseManager1().update1UserList(
        traingoals,
        mentalgoals,
        coursegoals,
        recreationgoals,
        _awesomevalue,
        _greatvalue,
        _happyvalue,
        _confidentvalue,
        _goodrestvalue,
        _dropdownconfident,
        _dropdownconcentration,
        _dropdowncomposure,
        _dropdownchallenge,
        _dropdowncommitment,
        _dropdownperformance,
        _dropdownsatisfaction,
        userID);
    fetch1DatabaseList();
  }

  Widget _buildawesomeperformance() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: '- Awesome Performances',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
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
            _awesomevalue = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget _buildgreatpractice() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: '- Great Practice',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
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
            _greatvalue = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget _buildfeelinghappy() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: '- Feeling Happy',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
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
            _happyvalue = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget _buildfeelingconfident() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: '- Feeling Confident/Determined/In Control',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
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
            _confidentvalue = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget _buildgoodrest() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: '- Good Rest and Nutrition',
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
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
            _goodrestvalue = val;
          },
        );
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildconfidentdropdown() {
    return DropdownButton(
      hint: _dropdownconfident == null
          ? Text('- Confidence')
          : Text(
        _dropdownconfident,
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
            _dropdownconfident = val;
          },
        );
      },
    );
  }

  Widget buildconcentrationdropdown() {
    return DropdownButton(
      hint: _dropdownconcentration == null
          ? Text('- Concentration')
          : Text(
        _dropdownconcentration,
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
            _dropdownconcentration = val;
          },
        );
      },
    );
  }

  Widget buildcomposuredropdown() {
    return DropdownButton(
      hint: _dropdowncomposure == null
          ? Text('- Composure')
          : Text(
        _dropdowncomposure,
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
            _dropdowncomposure = val;
          },
        );
      },
    );
  }

  Widget buildchallengedropdown() {
    return DropdownButton(
      hint: _dropdownchallenge == null
          ? Text('- Challenge Response')
          : Text(
        _dropdownchallenge,
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
            _dropdownchallenge = val;
          },
        );
      },
    );
  }

  Widget buildcommitmentdropdown() {
    return DropdownButton(
      hint: _dropdowncommitment == null
          ? Text('- Commitment')
          : Text(
        _dropdowncommitment,
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
            _dropdowncommitment = val;
          },
        );
      },
    );
  }

  Widget buildperformancedropdown() {
    return DropdownButton(
      hint: _dropdownperformance == null
          ? Text('- Overall Performance Rating')
          : Text(
        _dropdownperformance,
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
            _dropdownperformance = val;
          },
        );
      },
    );
  }

  Widget buildsatisfactiondropdown() {
    return DropdownButton(
      hint: _dropdownsatisfaction == null
          ? Text('- Overall Satisfaction/Happiness Rating')
          : Text(
        _dropdownsatisfaction,
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
            _dropdownsatisfaction = val;
          },
        );
      },
    );
  }


  Widget titleSection = Container(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Text(
          'Daily Success Journal',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
            fontSize: 26,
          ),
        ),
      ));

  Widget goalrecordSection = Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(15),
    child: Text(
      'GOAL/SUCCESS PLAN RECORD         ACHIEVED',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        decoration: TextDecoration.underline,
      ),
    ),
  );

  Widget welljournalSection = Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(15),
    child: Text(
      'WELL JOURNAL - (Positive Experiences I can Draw From)',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        decoration: TextDecoration.underline,
      ),
    ),
  );

  Widget mentalfitnessSection = Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(15),
    child: Text(
      'MENTAL FITNESS RECORD (Dr.B 5C)             '
          '      Select one, Low 0 - High 10',
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
                goalrecordSection,
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '1. Training/Performance Goals:                    ',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.a,
                      onChanged: (bool value) {
                        setState(() {
                          traingoals = value.toString();
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '2. Mental Fitness Goals:                                 ',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.b,
                      onChanged: (bool value) {
                        setState(() {
                          this.mentalgoals = value.toString();
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '3. Course Work Goals:                                     ',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.c,
                      onChanged: (bool value) {
                        setState(() {
                          this.coursegoals = value.toString();
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ), //SizedBox
                    Text(
                      '4. Recreation/Fun Goals:                                ',
                      style: TextStyle(fontSize: 13.0),
                    ), //Text
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.d,
                      onChanged: (bool value) {
                        setState(() {
                          this.recreationgoals = value.toString();
                        });
                      },
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                welljournalSection,
                _buildawesomeperformance(),
                _buildgreatpractice(),
                _buildfeelinghappy(),
                _buildfeelingconfident(),
                _buildgoodrest(),
                mentalfitnessSection,
                buildconfidentdropdown(),
                buildconcentrationdropdown(),
                buildcomposuredropdown(),
                buildchallengedropdown(),
                buildcommitmentdropdown(),
                buildperformancedropdown(),
                buildsatisfactiondropdown(),
                SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    submit1Action(context);
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

  submit1Action(BuildContext context) {
    updateData(
        traingoals1.text,
        mentalgoals1.text,
        coursegoals1.text,
        recreationgoals1.text,
        _awesomevalue1.text,
        _greatvalue1.text,
        _happyvalue1.text,
        _confidentvalue1.text,
        _goodrestvalue1.text,
        _dropdownconfident1.text,
        _dropdownconcentration1.text,
        _dropdowncomposure1.text,
        _dropdownchallenge1.text,
        _dropdowncommitment1.text,
        _dropdownperformance1.text,
        _dropdownsatisfaction1.text,
        userID);
    traingoals1.clear();
    mentalgoals1.clear();
    coursegoals1.clear();
    recreationgoals1.clear();
    _awesomevalue1.clear();
    _greatvalue1.clear();
    _happyvalue1.clear();
    _confidentvalue1.clear();
    _goodrestvalue1.clear();
    _dropdownconfident1.clear();
    _dropdownconcentration1.clear();
    _dropdowncomposure1.clear();
    _dropdownchallenge1.clear();
    _dropdowncommitment1.clear();
    _dropdownperformance1.clear();
    _dropdownsatisfaction1.clear();
  }
}
