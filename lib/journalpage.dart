import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  @override
  JournalPageState createState() => JournalPageState();
}

class JournalPageState extends State<JournalPage> {
  bool traingoals = false;
  bool mentalgoals = false;
  bool coursegoals = false;
  bool recreationgoals = false;
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
      onSaved: (String value) {
        _awesomevalue = value;
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
      onSaved: (String value) {
        _greatvalue = value;
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
      onSaved: (String value) {
        _happyvalue = value;
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
      onSaved: (String value) {
        _confidentvalue = value;
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
      onSaved: (String value) {
        _goodrestvalue = value;
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
          'Weekly Journal Page',
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
  //App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          /** Card Widget **/
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 500,
                height: 1180,
                child: Column(
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
                          value: this.traingoals,
                          onChanged: (bool value) {
                            setState(() {
                              this.traingoals = value;
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
                          value: this.mentalgoals,
                          onChanged: (bool value) {
                            setState(() {
                              this.mentalgoals = value;
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
                          value: this.coursegoals,
                          onChanged: (bool value) {
                            setState(() {
                              this.coursegoals = value;
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
                          value: this.recreationgoals,
                          onChanged: (bool value) {
                            setState(() {
                              this.recreationgoals = value;
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
                          if (!_formKey.currentState.validate()) {
                            return;
                          }

                          _formKey.currentState.save();

                          print(traingoals);
                          print(mentalgoals);
                          print(coursegoals);
                          print(recreationgoals);
                          print(_awesomevalue);
                          print(_greatvalue);
                          print(_happyvalue);
                          print(_confidentvalue);
                          print(_goodrestvalue);
                          print(_dropdownconfident);
                          print(_dropdownconcentration);
                          print(_dropdowncomposure);
                          print(_dropdownchallenge);
                          print(_dropdowncommitment);
                          print(_dropdownperformance);
                          print(_dropdownsatisfaction);

                          //Send to API
                        } //Row
                        ),
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}
