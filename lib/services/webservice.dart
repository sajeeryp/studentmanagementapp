import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:students/classroom_id.dart';
import 'package:students/model/classroomid_model.dart';
import 'package:students/model/main_model.dart';
import 'package:students/model/studentid_model.dart';
import 'package:students/model/subjectid_model.dart';
class Webservice{

  Future<Map<String, dynamic>> students() async {
    var result;
    final Map<String, dynamic> studentData = {
    };
    print(studentData.toString());
    final url = "https://hamon-interviewapi.herokuapp.com/students/?api_key=b88aa";
    final response = await http.get(Uri.parse(url),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      School authUser = School.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }

  //id

  Future<Map<String, dynamic>> studentid(String id) async {
    var result;
    final Map<String, dynamic> studentData = {
    };
    print(studentData.toString());
    final url = 'https://hamon-interviewapi.herokuapp.com/students/$id?api_key=b88aa';
    print(url);
    final response = await http.get(Uri.parse(url),

    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      Credits authUser = Credits.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }

  //subject


  Future<Map<String, dynamic>> subjects() async {
    var result;
    final Map<String, dynamic> subjectData = {
    };
    print(subjectData.toString());
    final url = "https://hamon-interviewapi.herokuapp.com/subjects/?api_key=b88aa";
    final response = await http.get(Uri.parse(url),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      School authUser = School.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }

  //id
  Future<Map<String, dynamic>> subjectid(String id) async {
    var result;
    final Map<String, dynamic> studentData = {
    };
    print(studentData.toString());
    final url = 'https://hamon-interviewapi.herokuapp.com/subjects/$id?api_key=b88aa';
    print(url);
    final response = await http.get(Uri.parse(url),

    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      Sub authUser = Sub.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }



  //id

  Future<Map<String, dynamic>> classrooomid(String id) async {
    var result;
    final Map<String, dynamic> studentData = {
    };
    print(studentData.toString());
    final url = 'https://hamon-interviewapi.herokuapp.com/classrooms/$id?api_key=b88aa';
    print(url);
    final response = await http.get(Uri.parse(url),

    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      Class authUser = Class.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }

  //classrooms




  Future<Map<String, dynamic>> classrooms() async {
    var result;
    final Map<String, dynamic> classroomsData = {
    };
    print(classroomsData.toString());
    final url = "https://hamon-interviewapi.herokuapp.com/classrooms/?api_key=b88aa";
    final response = await http.get(Uri.parse(url),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("inside 200");
      final Map<String, dynamic>responseData = jsonDecode(response.body);
      print("status code ____________________"+response.statusCode.toString());
      print("response ______________"+response.body.toString());
      var userData = responseData;
      print("userData :" + userData.toString());
      School authUser = School.fromJson(userData);
      print("authUser :"+authUser.toString());
      result = {'status': true, 'message': 'Successful', 'user': authUser};
      return result;
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body)['error'],
        'user': null
      };
    }
    return result;
  }


}