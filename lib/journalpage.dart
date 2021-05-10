import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:layout/DatabaseManager/DatabaseManager1.dart';
import 'package:intl/intl.dart';
//Copyright 2021, Jiaji Zhang, Jianfeng Peng, Sisi Chen. All rights reserved

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
  String sss = 'time of day';
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController traingoals1 = TextEditingController();
  TextEditingController mentalgoals1 = TextEditingController();
  TextEditingController coursegoals1 = TextEditingController();
  TextEditingController recreationgoals1 = TextEditingController();
  TextEditingController _awesomevalue1 = TextEditingController();
  TextEditingController _greatvalue1 = TextEditingController();
  TextEditingController _happyvalue1 = TextEditingController();
  TextEditingController _confidentvalue1 = TextEditingController();
  TextEditingController _goodrestvalue1 = TextEditingController();


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

  updateData(String a, String b, String c, String d, String e, String f,
      String g, String h, String i, String uid) async {

    await DatabaseManager1().create1UserData(
        traingoals,
        mentalgoals,
        coursegoals,
        recreationgoals,
        _awesomevalue,
        _greatvalue,
        _happyvalue,
        _confidentvalue,
        _goodrestvalue,
        userID);
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

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
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
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: <Widget>[
                        //SizedBox
                        Text(
                          '1. Training/Performance Goals:                    ',
                          style: TextStyle(fontSize: 13.0),
                        ), //Text
                        SizedBox(width: 10),
                        new Checkbox(
                            value: a,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                a = newValue;
                                traingoals = a.toString();
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: <Widget>[
                        //SizedBox
                        Text(
                          '2. Mental Fitness Goals:                                 ',
                          style: TextStyle(fontSize: 13.0),
                        ), //Text
                        SizedBox(width: 10),
                        new Checkbox(
                            value: b,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                b = newValue;
                                mentalgoals = b.toString();
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: <Widget>[
                        //SizedBox
                        Text(
                          '3. Course Work Goals:                                     ',
                          style: TextStyle(fontSize: 13.0),
                        ), //Text
                        SizedBox(width: 10),
                        new Checkbox(
                            value: c,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                c = newValue;
                                coursegoals = c.toString();
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: <Widget>[
                        //SizedBox
                        Text(
                          '4. Recreation/Fun Goals:                                ',
                          style: TextStyle(fontSize: 13.0),
                        ), //Text
                        SizedBox(width: 10),
                        new Checkbox(
                            value: d,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                d = newValue;
                                recreationgoals = d.toString();
                              });
                            }),
                      ],
                    ),
                  ),
                  welljournalSection,
                  _buildawesomeperformance(),
                  _buildgreatpractice(),
                  _buildfeelinghappy(),
                  _buildfeelingconfident(),
                  _buildgoodrest(),
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
    });
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
  }
}
