import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:layout/planpage.dart';
import 'package:layout/journalpage.dart';

class DatabaseManager1 {

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
      String dropdownconfident,
      String dropdownconcentration,
      String dropdowncomposure,
      String dropdownchallenge,
      String dropdowncommitment,
      String dropdownperformance,
      String dropdownsatisfaction,
      String uid) async {
    return await yyyList.document(uid).setData({
      'Training Goal': traingoal,
      'Mental Fitness Goals': mentalgoal,
      'Course Work Goals': coursegoal,
      'Recreation Goals': recreationgoal,
      'Awesome Performances': awesomevalue,
      'Great Practice': greatvalue,
      'Feeling Happy': happyvalue,
      'Feeling Confident': confidentvalue,
      'Good Rest and Nutrition': goodrestvalue,
      'Confidence': dropdownconfident,
      'Concentration': dropdownconcentration,
      'Composure': dropdowncomposure,
      'Challenge Response': dropdownchallenge,
      'Commitment': dropdowncommitment,
      'Overall Performance Rating': dropdownperformance,
      'Overall Satisfaction/Happiness Rating': dropdownsatisfaction
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
      String _dropdownconfident,
      String _dropdownconcentration,
      String _dropdowncomposure,
      String _dropdownchallenge,
      String _dropdowncommitment,
      String _dropdownperformance,
      String _dropdownsatisfaction,
      String uid) async {
    return await yyyList.document(uid).updateData({
      'Training Goal': 'traingoals',
      'Mental Fitness Goals': 'mentalgoals',
      'Course Work Goals': 'coursegoals',
      'Recreation Goals': 'recreationgoals',
      'Awesome Performances': '_awesomevalue',
      'Great Practice': _greatvalue,
      'Feeling Happy': _happyvalue,
      'Feeling Confident': _confidentvalue,
      'Good Rest and Nutrition': _goodrestvalue,
      'Confidence': _dropdownconfident,
      'Concentration': _dropdownconcentration,
      'Composure': _dropdowncomposure,
      'Challenge Response': _dropdownchallenge,
      'Commitment': _dropdowncommitment,
      'Overall Performance Rating': _dropdownperformance,
      'Overall Satisfaction/Happiness Rating': _dropdownsatisfaction
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
