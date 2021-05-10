import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'home_widget.dart';

class summarytutorial extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  AudioPlayer player;
  var x = 0;
  @override
  Widget build(BuildContext context) {
    Widget board14content = FadeIn(
      child: Column(
        children: [
          Text(" "),
          Text(
            "Measuring your Success      ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Start to Finish                                ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Success of Goal Achievement    ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Analysis of Performance             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Drawing from the WELL               ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Building Mental Fitness               ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "Overall Ratings for Week             ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            "No Failure - only Feedback         ",
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

    Widget board14all = Container(
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
                              .play('audios/Tutorial Board 14 Audio.mp3');
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
              child: board14content,
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
                          "Weekly Success Summary",
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
                        board14all,
                        Text(' '),
                        homepagedirection,
                      ]),
                    )
                  ],
                ))));
  }
}
