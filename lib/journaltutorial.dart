import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'home_widget.dart';

class journaltutorial extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  AudioPlayer player;
  var x = 0;
  @override
  Widget build(BuildContext context) {
    Widget board1content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Overview                                   ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Everyday a masterpiece             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Focus on Tasks                            ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Awareness of Positive Feelings",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Monitor mental Fitness              ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Evaluate Performance                ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Rate Satisfaction                         ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
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
                          player = await audioCache
                              .play('audios/Tutorial Board 8 Audio.mp3');
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

    Widget board2content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Goal Plan Record                   ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Focus on the Process                 ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Time on Task                                ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Ongoing Monitoring                    ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "End of Day                                    ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
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
                          player = await audioCache
                              .play('audios/Tutorial Board 9 Audio.mp3');
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

    Widget board3content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Well Journal                           ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Neuroplasticity                            ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "180 Degree Shift                          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "What Went Well                           ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Noticing                                        ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Storing                                          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Recording                                     ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Drawing                                        ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board3all = Container(
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
                          player = await audioCache
                              .play('audios/Tutorial Board 10 Audio.mp3');
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
              child: board3content,
            ),
          ],
        ),
      ],
    ));

    Widget board4content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Mental Fitness Record         ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "- Confidence                                 ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Concentration                            ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Composure                                 ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Challenge Response                ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Commitment                              ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board4all = Container(
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
                          player = await audioCache
                              .play('audios/Tutorial Board 11 Audio.mp3');
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
              child: board4content,
            ),
          ],
        ),
      ],
    ));

    Widget board5content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Overall Performance Rating",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Composit Rating                          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Goal Attainment Success          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Exceptional Performance          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Improved Mental Fitness           ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board5all = Container(
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
                          player = await audioCache
                              .play('audios/Tutorial Board 12 Audio.mp3');
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
              child: board5content,
            ),
          ],
        ),
      ],
    ));

    Widget board6content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Overall Satisfaction Rating ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Coach John Wooden                   ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Peace of Mind                              ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Self Esteem                                  ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
              "                                                                      "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board6all = Container(
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
                          player = await audioCache
                              .play('audios/Tutorial Board 13 Audio.mp3');
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
              child: board6content,
            ),
          ],
        ),
      ],
    ));

    Widget homepagedirection = Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text(
            'Back to Home Page',
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
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(children: [
                        Text(' '),
                        Text(" "),
                        Text(
                          "Daily Success Journal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          "Tutorial",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          "                                                     ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 26,
                          ),
                        ),
                        Text(' '),
                        board1all,
                        Text(' '),
                        board2all,
                        Text(' '),
                        board3all,
                        Text(' '),
                        board4all,
                        Text(' '),
                        board5all,
                        Text(' '),
                        board6all,
                        Text(' '),
                        homepagedirection,
                      ]),
                    )
                  ],
                ))));
  }
}
