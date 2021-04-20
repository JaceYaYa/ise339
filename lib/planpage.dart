import 'package:flutter/material.dart';

class PlanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlanPageState();
  }
}

class PlanPageState extends State<PlanPage> {
  String _vision;
  String _trainingperformancegoals;
  String _mentalfitnessgoals;
  String _courseworkgoals;
  String _recreationalgoals;
  String _dropdownoverallvalue;
  String _dropdownlevelvalue;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      onSaved: (String value) {
        _vision = value;
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildtrainingperformancegoals() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ('State how many times you will do each goal '
              'using a bracket, ie _ to _ Xs'),
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
      onSaved: (String value) {
        _trainingperformancegoals = value;
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildmentalfitnessgoals() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ('State how many times you will do each goal '
              'using a bracket, ie _ to _ Xs'),
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
      onSaved: (String value) {
        _mentalfitnessgoals = value;
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildcourseworkgoals() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ('State how many times you will do each goal '
              'using a bracket, ie _ to _ Xs'),
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
      onSaved: (String value) {
        _courseworkgoals = value;
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildrecreationalgoals() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: ('State how many times you will do each goal '
              'using a bracket, ie _ to _ Xs'),
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
      onSaved: (String value) {
        _recreationalgoals = value;
      },
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Widget buildoveralldropdown() {
    return DropdownButton(

      hint: _dropdownoverallvalue == null
          ? Text('Select one, Low 0, High 10')
          : Text(
              _dropdownoverallvalue,
              style: TextStyle(color: Colors.blue),
            ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7', '8','9','10'].map(
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
          ? Text('Select one, Low 0, High 10')
          : Text(
        _dropdownlevelvalue,
        style: TextStyle(color: Colors.blue),
      ),
      isExpanded: true,
      iconSize: 30.0,
      elevation: 2,
      style: TextStyle(color: Colors.blue),
      items: ['0', '1', '2', '3', '4', '5', '6', '7', '8','9','10'].map(
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
                buildtrainingperformancegoals(),
                mentalSection,
                buildmentalfitnessgoals(),
                courseworkSection,
                buildcourseworkgoals(),
                recreationalSection,
                buildrecreationalgoals(),
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
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_vision);
                    print(_trainingperformancegoals);
                    print(_mentalfitnessgoals);
                    print(_courseworkgoals);
                    print(_recreationalgoals);
                    print(_dropdownoverallvalue);
                    print(_dropdownlevelvalue);

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
}
