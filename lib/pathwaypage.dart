import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:layout/DatabaseManager/DatabaseManager.dart';
import 'package:intl/intl.dart';
//Copyright 2021, Jiaji Zhang, Jianfeng Peng, Sisi Chen. All rights reserved

class PathwayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PathwayPageState();
  }
}

class PathwayPageState extends State<PathwayPage> {
  final _screenshotController = ScreenshotController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 7;
  final double completepercent = 0;
  bool abcd = true;
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String sss = 'time of day';
  double totaltraintrue = 0;
  double totalmentaltrue = 0;
  double totalcoursetrue = 0;
  double totalfuntrue = 0;


  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;
  int qtrain = 0;
  int wmental = 0;
  int ecourse = 0;
  int rfun = 0;

  countDate() async {
    QuerySnapshot _myDoc = await Firestore.instance.collection('Daily Success Journal')
        .document(userID).collection(sss).getDocuments();
    List<DocumentSnapshot> _myDocCount = _myDoc.documents;
    qtrain = _myDocCount.length;
    wmental = _myDocCount.length;
    ecourse = _myDocCount.length;
    rfun = _myDocCount.length;
    print(qtrain+1);
    // Count of Documents in Collection
  }


  int touchedGroupIndex;

  void initState() {
    var barGroup1 = makeGroupData(0, totaltraintrue, 7);
    var barGroup2 = makeGroupData(1, totalmentaltrue, 7);
    var barGroup3 = makeGroupData(2, totalcoursetrue, 7);
    var barGroup4 = makeGroupData(3, totalfuntrue, 7);

    var items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
    fetchUserInfo();
    fetchDatabaseList();
  }

  List userProfilesList = [];
  int index = 0;

  String userID = "";
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

  int touchedIndex;
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Screenshot(
                  controller: _screenshotController,
                  child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            titleSection,
                            StreamBuilder(
                                stream: Firestore.instance
                                    .collection('Daily Success Journal').
                                document(userID).collection(sss).snapshots(),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData)
                                    return Text('Loading Data');
                                  qtrain = snapshot.data.documents.length;
                                  wmental = qtrain;
                                  ecourse = qtrain;
                                  rfun = qtrain;
                                  if(abcd){
                                    if(qtrain >= 7){
                                      if(snapshot.data.documents[qtrain-1]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-2]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-3]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-4]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-5]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-6]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                      if(snapshot.data.documents[qtrain-7]['Training Goal'] == 'true'){
                                        totaltraintrue+=1;
                                      }
                                    } else {
                                      for (int x = 1;x <= qtrain; x++){
                                        if((snapshot.data.documents[qtrain-x]['Training Goal']).
                                        toString().compareTo('true') == 0){
                                          totaltraintrue = totaltraintrue + 1;
                                        }
                                      }
                                    }
                                    if(wmental >= 7){
                                      if(snapshot.data.documents[wmental-1]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-2]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-3]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-4]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-5]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-6]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                      if(snapshot.data.documents[wmental-7]['Mental Fitness Goals'] == 'true'){
                                        totalmentaltrue+=1;
                                      }
                                    } else {
                                      for (int x = 1;x <= wmental; x++){
                                        if(snapshot.data.documents[wmental-x]['Mental Fitness Goals'].
                                        toString().compareTo('true') == 0){
                                          totalmentaltrue+=1;
                                        }
                                      }
                                    }
                                    if(ecourse >= 7){
                                      if(snapshot.data.documents[ecourse-1]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-2]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-3]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-4]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-5]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-6]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                      if(snapshot.data.documents[ecourse-7]['Course Work Goals'] == 'true'){
                                        totalcoursetrue+=1;
                                      }
                                    } else {
                                      for (int x = 1;x <= ecourse; x++){
                                        if(snapshot.data.documents[ecourse-x]['Course Work Goals'].
                                        toString().compareTo('true') == 0){
                                          totalcoursetrue+=1;
                                        }
                                      }
                                    }
                                    if(rfun >= 7){
                                      if(snapshot.data.documents[rfun-1]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-2]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-3]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-4]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-5]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-6]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                      if(snapshot.data.documents[rfun-7]['Recreation Goals'] == 'true'){
                                        totalfuntrue+=1;
                                      }
                                    } else {
                                      for (int x = 1;x <= rfun; x++){
                                        if(snapshot.data.documents[rfun-x]['Recreation Goals'].
                                        toString().compareTo('true') == 0){
                                          totalfuntrue+=1;
                                        }
                                      }
                                    }
                                    abcd = false;
                                  }

                                  final barGroup5 = makeGroupData(0, totaltraintrue, 7);
                                  final barGroup6 = makeGroupData(1, totalmentaltrue, 7);
                                  final barGroup7 = makeGroupData(2, totalcoursetrue, 7);
                                  final barGroup8 = makeGroupData(3, totalfuntrue, 7);

                                  final items = [
                                    barGroup5,
                                    barGroup6,
                                    barGroup7,
                                    barGroup8,
                                  ];

                                  rawBarGroups = items;

                                  showingBarGroups = rawBarGroups;
                                  return Column(
                                    children: <Widget>[
                                      analysisSection,
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4)),
                                        color: const Color(0xff2c4260),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                child: AspectRatio(
                                                  aspectRatio: 0.8,
                                                  child: Card(
                                                    elevation: 0,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(4)),
                                                    color: const Color(0xff2c4260),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(16),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.stretch,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: <Widget>[
                                                          Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.center,
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.start,
                                                            children: <Widget>[
                                                              makeTransactionsIcon(),
                                                              const SizedBox(
                                                                width: 38,
                                                              ),
                                                              const Text(
                                                                'Four Goals',
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 22),
                                                              ),
                                                              const SizedBox(
                                                                width: 4,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.center,
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.start,
                                                            children: <Widget>[
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                'Green: Completed / Red: Total',
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 15),
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets.symmetric(
                                                                  horizontal: 8.0),
                                                              child: BarChart(
                                                                BarChartData(
                                                                  maxY: 7,
                                                                  barTouchData: BarTouchData(
                                                                      touchTooltipData:
                                                                      BarTouchTooltipData(
                                                                        tooltipBgColor:
                                                                        Colors.grey,
                                                                        getTooltipItem: (_a,
                                                                            _b, _c, _d) =>
                                                                        null,
                                                                      ),
                                                                      touchCallback:
                                                                          (response) {
                                                                        if (response.spot ==
                                                                            null) {
                                                                          setState(() {
                                                                            touchedGroupIndex =
                                                                            -1;
                                                                            showingBarGroups =
                                                                                List.of(
                                                                                    rawBarGroups);
                                                                          });
                                                                          return;
                                                                        }

                                                                        touchedGroupIndex =
                                                                            response.spot
                                                                                .touchedBarGroupIndex;

                                                                        setState(() {
                                                                          if (response.touchInput
                                                                          is PointerExitEvent ||
                                                                              response.touchInput
                                                                              is PointerUpEvent) {
                                                                            touchedGroupIndex =
                                                                            -1;
                                                                            showingBarGroups =
                                                                                List.of(
                                                                                    rawBarGroups);
                                                                          } else {
                                                                            showingBarGroups =
                                                                                List.of(
                                                                                    rawBarGroups);
                                                                            if (touchedGroupIndex !=
                                                                                -1) {
                                                                              double sum = 0;
                                                                              for (BarChartRodData rod
                                                                              in showingBarGroups[
                                                                              touchedGroupIndex]
                                                                                  .barRods) {
                                                                                sum += rod.y;
                                                                              }
                                                                              final avg = sum /
                                                                                  showingBarGroups[
                                                                                  touchedGroupIndex]
                                                                                      .barRods
                                                                                      .length;

                                                                              showingBarGroups[
                                                                              touchedGroupIndex] =
                                                                                  showingBarGroups[
                                                                                  touchedGroupIndex]
                                                                                      .copyWith(
                                                                                    barRods: showingBarGroups[
                                                                                    touchedGroupIndex]
                                                                                        .barRods
                                                                                        .map(
                                                                                            (rod) {
                                                                                          return rod
                                                                                              .copyWith(
                                                                                              y: avg);
                                                                                        }).toList(),
                                                                                  );
                                                                            }
                                                                          }
                                                                        });
                                                                      }),
                                                                  titlesData: FlTitlesData(
                                                                    show: true,
                                                                    bottomTitles: SideTitles(
                                                                      showTitles: true,
                                                                      getTextStyles: (value) =>
                                                                      const TextStyle(
                                                                          color: Color(
                                                                              0xff7589a2),
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                          fontSize: 14),
                                                                      margin: 32,
                                                                      getTitles:
                                                                          (double value) {
                                                                        switch (
                                                                        value.toInt()) {
                                                                          case 0:
                                                                            return 'Train';
                                                                          case 1:
                                                                            return 'Mental';
                                                                          case 2:
                                                                            return 'Course';
                                                                          case 3:
                                                                            return 'Fun';
                                                                          default:
                                                                            return '';
                                                                        }
                                                                      },
                                                                    ),
                                                                    leftTitles: SideTitles(
                                                                      showTitles: true,
                                                                      getTextStyles: (value) =>
                                                                      const TextStyle(
                                                                          color: Color(
                                                                              0xff7589a2),
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                          fontSize: 14),
                                                                      margin: 32,
                                                                      reservedSize: 14,
                                                                      getTitles: (value) {
                                                                        if (value == 0) {
                                                                          return '0';
                                                                        } else if (value ==
                                                                            2) {
                                                                          return '2';
                                                                        } else if (value ==
                                                                            4) {
                                                                          return '4';
                                                                        } else if (value ==
                                                                            7) {
                                                                          return '7';
                                                                        } else {
                                                                          return '';
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                  borderData: FlBorderData(
                                                                    show: false,
                                                                  ),
                                                                  barGroups: showingBarGroups,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 12,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4)),
                                        color: const Color(0xff2c4260),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Bar Graph of Completed/Total goals',
                                                      style: TextStyle(
                                                          color: Colors.white, fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Card(
                                                  color: Colors.white,
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: PieChart(
                                                      PieChartData(
                                                        pieTouchData: PieTouchData(
                                                            touchCallback:
                                                                (pieTouchResponse) {
                                                              setState(() {
                                                                final desiredTouch =
                                                                    pieTouchResponse.touchInput
                                                                    is! PointerExitEvent &&
                                                                        pieTouchResponse
                                                                            .touchInput
                                                                        is! PointerUpEvent;
                                                                if (desiredTouch &&
                                                                    pieTouchResponse
                                                                        .touchedSection !=
                                                                        null) {
                                                                  touchedIndex = pieTouchResponse
                                                                      .touchedSection
                                                                      .touchedSectionIndex;
                                                                } else {
                                                                  touchedIndex = -1;
                                                                }
                                                              });
                                                            }),
                                                        borderData: FlBorderData(
                                                          show: false,
                                                        ),
                                                        sectionsSpace: 0,
                                                        centerSpaceRadius: 0,
                                                        sections: showingSections(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                            mentalSection,
                            Text(
                              "Dr.B's 5 C's   Intial MFA Level   Weekly Average",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                            ]),

                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 16;
      final double radius = isTouched ? 110 : 100;
      final double widgetSize = isTouched ? 55 : 40;
      final completepercent = (100*(totaltraintrue+totalcoursetrue+totalmentaltrue+totalfuntrue)/28).toInt().toDouble();

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff53fdd7),
            value: completepercent,
            title: completepercent.toString() + '%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF000001)),
            badgeWidget: _Badge(
              'assets/images/yes.svg',
              size: widgetSize,
              borderColor: const Color(0xff53fdd7),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffff5182),
            value: 100-completepercent,
            title: (100-completepercent).toString() + '%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF000001)),
            badgeWidget: _Badge(
              'assets/images/wrong.svg',
              size: widgetSize,
              borderColor: const Color(0xffff5182),
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          return null;
      }
    });
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y1,
        colors: [leftBarColor],
        width: width,
      ),
      BarChartRodData(
        y: y2,
        colors: [rightBarColor],
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const double width = 4.5;
    const double space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }

  File imageFile;
  File A;

  void _takeScreenshot() async {
    final imageFile = await _screenshotController.capture();
    final directory = (await getApplicationDocumentsDirectory()).path;
    File imgFile = new File('$directory/newfile.jpg');
    imgFile.writeAsBytes(imageFile);
    print("File Saved to Gallery");
    await Share.shareFiles([imgFile.path]);
  }
}

class _Badge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const _Badge(
      this.svgAsset, {
        Key key,
        @required this.size,
        @required this.borderColor,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: SvgPicture.asset(
          svgAsset,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
