import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
//Copyright 2021, Jiaji Zhang, Jianfeng Peng, Sisi Chen. All rights reserved.

class DatabaseManager1 {
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String sss = 'time of day';
  final CollectionReference yyyList =
      Firestore.instance.collection('Daily Success Journal');

  Future<void> create1UserData(
      String traingoal,
      String mentalgoal,
      String coursegoal,
      String recreationgoal,
      String awesomevalue,
      String greatvalue,
      String happyvalue,
      String confidentvalue,
      String goodrestvalue,
      String uid) async {
    return await yyyList.document(uid).collection(sss).document(date).setData({
      'Training Goal': traingoal,
      'Mental Fitness Goals': mentalgoal,
      'Course Work Goals': coursegoal,
      'Recreation Goals': recreationgoal,
      'Awesome Performances': awesomevalue,
      'Great Practice': greatvalue,
      'Feeling Happy': happyvalue,
      'Feeling Confident': confidentvalue,
      'Good Rest and Nutrition': goodrestvalue,
    });
  }

  Future update1UserList(
      String traingoals,
      String mentalgoals,
      String coursegoals,
      String recreationgoals,
      String _awesomevalue,
      String _greatvalue,
      String _happyvalue,
      String _confidentvalue,
      String _goodrestvalue,
      String uid) async {
    return await yyyList.document(uid).collection(sss).document(date).updateData({
      'Training Goal': traingoals,
      'Mental Fitness Goals': mentalgoals,
      'Course Work Goals': coursegoals,
      'Recreation Goals': recreationgoals,
      'Awesome Performances': _awesomevalue,
      'Great Practice': _greatvalue,
      'Feeling Happy': _happyvalue,
      'Feeling Confident': _confidentvalue,
      'Good Rest and Nutrition': _goodrestvalue,
    });
  }

  Future get1UsersList() async {
    List itemsList = [];

    try {
      await yyyList.getDocuments().then((querySnapshot) {
        querySnapshot.documents.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
