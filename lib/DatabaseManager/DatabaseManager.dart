import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:layout/planpage.dart';
import 'package:layout/journalpage.dart';

class DatabaseManager {
  final CollectionReference xxxList =
      Firestore.instance.collection('Weekly Success Plan');


  Future<void> createUserData(
      String vision,
      String dropdowntraininggoals,
      String dropdownmentalgoals,
      String dropdowncoursegoals,
      String dropdownfungoals,
      String dropdownoverallvalue,
      String dropdownlevelvalue,
      String uid) async {
    return await xxxList.document(uid).setData({
      'vision': vision,
      'Training goals': dropdowntraininggoals,
      'Mental goals': dropdownmentalgoals,
      'Course goals': dropdowncoursegoals,
      'Recreational goals': dropdownfungoals,
      'Overall value': dropdownoverallvalue,
      'Level value': dropdownlevelvalue
    });
  }

  Future updateUserList(
      String _vision,
      String _dropdowntraininggoals,
      String _dropdownmentalgoals,
      String _dropdowncoursegoals,
      String _dropdownfungoals,
      String _dropdownoverallvalue,
      String _dropdownlevelvalue,
      String uid) async {
    return await xxxList.document(uid).updateData({
      'vision': _vision,
      'Training goals': _dropdowntraininggoals,
      'Mental goals': _dropdownmentalgoals,
      'Course goals': _dropdowncoursegoals,
      'Recreational goals': _dropdownfungoals,
      'Overall value': _dropdownoverallvalue,
      'Level value': _dropdownlevelvalue
    });
  }



  Future getUsersList() async {
    List itemsList = [];

    try {
      await xxxList.getDocuments().then((querySnapshot) {
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
