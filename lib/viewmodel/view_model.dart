
import 'package:flutter/cupertino.dart';
import 'package:students/classroom_id.dart';
import 'package:students/model/model_student.dart';
import 'package:students/services/webservice.dart';

class MyViewModel extends ChangeNotifier {

  Future<Map<String, dynamic>> students() async

  {
    final results = await Webservice().students();

    return results;
  }

  Future<Map<String, dynamic>> studentid(String id) async

  {
    final results = await Webservice().studentid(id);

    return results;
  }


  Future<Map<String, dynamic>> subjectid(String id) async

  {
    final results = await Webservice().subjectid(id);

    return results;
  }


  Future<Map<String, dynamic>> classrooomid(String id) async

  {
    final results = await Webservice().classrooomid(id);

    return results;
  }


  Future<Map<String, dynamic>> subjects() async

  {
    final results = await Webservice().subjects();

    return results;
  }

  Future<Map<String, dynamic>> classrooms() async

  {
    final results = await Webservice().classrooms();

    return results;
  }

}
