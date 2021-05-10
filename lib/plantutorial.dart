import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'home_widget.dart';
import 'journaltutorial.dart';


class tutorialpage extends StatelessWidget {
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
            "VISION => Action Plan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Confidence                             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Concentration                        ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Composure                             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Challenge Response            ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "- Commitment                          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                                  'audios/Tutorial Board 1 Audio.mp3');
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
            "Components                            ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Vision of the Week Ahead",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Action Goal to Accomplish",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Overall Performance Goal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Level of Satisfaction Goal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                                  'audios/Tutorial Board 2 Audio.mp3');
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
            "Vision/Outcome Goals           ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Believe it will Happen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Accomplishments",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Positive Experiences",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Self Satisfaction",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                              player = await audioCache.play(
                                  'audios/Tutorial Board 3 Audio.mp3');
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
            "Process Goals                          ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Specific",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),

          ),
          Text(
            "Measurable",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Action oriented",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Realistic",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Time - phase",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Exciting",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Recorded",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                              player = await audioCache.play(
                                  'audios/Tutorial Board 4 Audio.mp3');
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
            "Overall Performance               ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Commitment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Determination",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Level of Demand",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Level of Readiness",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                              player = await audioCache.play(
                                  'audios/Tutorial Board 5 Audio.mp3');
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
            "Level of Satisfaction               ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Self Esteem",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Feeling of Accomplishment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
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
                              player = await audioCache.play(
                                  'audios/Tutorial Board 6 Audio.mp3');
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

    Widget board7content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "“If you have built castles in the air,",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "your work need not be lost; that is ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "where they should be. Now put ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "foundations under them.”",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("    "),
          Text(
            "                      –Henry David Thoreau",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text("                                                                      "),
        ],
      ),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
    );

    Widget board7all = Container(
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
                                  'audios/Tutorial Board 7 Audio.mp3');
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
                  child: board7content,
                ),
              ],
            ),
          ],
        ));

    Widget homepagedirection = Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()));
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
                          "Weekly Goal/Success Plan",
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
                        board7all,
                        Text(' '),
                        homepagedirection,
                      ]),
                    )
                  ],
                ))));
  }
}
