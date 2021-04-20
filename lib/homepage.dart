import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:layout/journaltutorial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'plantutorial.dart';
import 'journaltutorial.dart';

const _url = 'https://you.stonybrook.edu/sportpsych/';

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  AudioPlayer player;
  var x = 0;
  @override
  Widget build(BuildContext context) {
    Widget title1Section = Container(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            'Introduction',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ));

    Widget board1content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "SUCCESS IN MIND",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Digital Technology",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "PLUS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "             Sport And Performance             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Psychology",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(" "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board1all = Container(
        child: Column(
      children: <Widget>[
        Row(
          children: [
            Text(" "),
            Text(" "),
            Text(" "),
            Text(" "),
            Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: (Image.asset(
                    'assets/images/drbicon.jpg',
                    width: 18,
                    height: 27,
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                    height: 30,
                    width: 80,
                    child: RaisedButton(
                      child: Icon(
                        x == 0 ? Icons.play_arrow : Icons.pause,
                      ),
                      onPressed: () async {
                        if (x == 0) {
                          player = await audioCache.play(
                              'audios/Success in Mind - Intro - Board 1.mp3');
                          x = 1;
                        } else if (x == 1) {
                          player?.pause();
                          x = 0;
                        }
                      },
                    )),
              ],
            ),
            Text(" "),
            Text(" "),
            Text(" "),
            Text(" "),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: board1content,
            ),
          ],
        ),
      ],
    ));

    Widget title2Section = Container(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            'Pathway to Success',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              decoration: TextDecoration.underline,
            ),
          ),
        ));

    Widget board2content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "SUCCESS IN MIND",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Integrated APP and Website",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Mental Fitness Assessment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "           Goal Setting and Analysis           ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Resources on the Website",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Self Directed or with Consultation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(" "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board2all = Container(
        child: Column(
      children: <Widget>[
        Row(
          children: [
            Text(" "),
            Text(" "),
            Text(" "),
            Text(" "),
            Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: (Image.asset(
                    'assets/images/drbicon.jpg',
                    width: 18,
                    height: 27,
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                    height: 30,
                    width: 80,
                    child: RaisedButton(
                      child: Icon(
                        x == 0 ? Icons.play_arrow : Icons.pause,
                      ),
                      onPressed: () async {
                        if (x == 0) {
                          player = await audioCache.play(
                              'audios/Success in Mind- Description - Board 2.mp3');
                          x = 1;
                        } else if (x == 1) {
                          player?.pause();
                          x = 0;
                        }
                      },
                    )),
              ],
            ),
            Text(" "),
            Text(" "),
            Text(" "),
            Text(" "),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: board2content,
            ),
          ],
        ),
      ],
    ));

    Widget title3Section = Container(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            'How to Use the App',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              decoration: TextDecoration.underline,
            ),
          ),
        ));

    Widget board3all = Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(" "),
              Text(" "),
              Text("   1. "),
              Text("   "),
              Text("   "),
              Text("   2. "),
              Text("   "),
              Text("   "),
              Text("   "),
              Text("   "),
              Text("   "),
              Text("   3. "),
              Text(" "),
              Text(" "),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(" "),
              Text(" "),
              Text(
                "Go to successmind.com and Complete the ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Mental Fitness Assessment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text("   "),
              Text(
                "Watch the tutorials for the:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Weekly Goal/Success Plan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Daily Success Journal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Weekly Success Summary",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Pathway to Success",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text("   "),
              Text(
                "Complete A Weekly Success Plan And Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(" "),
              Text(" "),
            ],
          )
        ],
      ),
    );

    void _launchURL() async => await canLaunch(_url)
        ? await launch(
            _url,
          )
        : throw 'Could not launch $_url';

    Widget urldirection = Container(
      child: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text(
            'Direction to Mental Fitness Assessment',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );

    Widget goaltutorialdirection = Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => tutorialpage()));
          },
          child: Text(
            'Direction to Weekly Goal/Success Plan Tutorial',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );

    Widget journaltutorialdirection = Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => journaltutorial()));
          },
          child: Text(
            'Direction to Daily Success Journal Tutorial',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: <Widget>[
        Row(
          //ROW 1
          children: [
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.all(35.0),
              child: Column(children: [
                Text(" "),
                Text(
                  "Success In Mind",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Text(" "),
                Text(
                  "The Student - Athlete's Pathway to Success",
                  style: TextStyle(
                    fontSize: 10.4,
                  ),
                )
              ]),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.purple,
              child: (Image.asset(
                'assets/images/download.jpg',
                width: 18,
                height: 27,
                fit: BoxFit.cover,
              )),
            ),
          ],
        ),
        title1Section,
        board1all,
        Text(" "),
        Text(" "),
        title2Section,
        board2all,
        Text(" "),
        Text(" "),
        title3Section,
        board3all,
        Text(" "),
        Text(" "),
        urldirection,
        goaltutorialdirection,
        journaltutorialdirection,
        Text(" "),
        Text(" "),
      ]),
    )));
  }
}
