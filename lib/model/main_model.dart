
import 'package:flutter/material.dart';

import 'model_student.dart';
import 'model_classrooms.dart';
import 'model_subjects.dart';

class School {

  List<Students> students;
  List<Subjects> subjects;
  List<Classrooms> classrooms;

  School({this.students,this.subjects,this.classrooms});

  factory School.fromJson(Map<String, dynamic> Json) {
    print(Json["students"]);

    List<Students> _student;
    if (Json['students'] != null) {
      var tagObjsJson = Json['students'] as List;
      print("//********************");
      print(tagObjsJson);
      _student =
          tagObjsJson.map((featureJson) => Students.fromJson(featureJson))
              .toList();
      print("_students :" + _student.toString());
    }
      //subjects
      List<Subjects> _subjects;
      if (Json['subjects'] != null) {
        var tagObjsJson = Json['subjects'] as List;
        print("//********************");
        print(tagObjsJson);
        _subjects =
            tagObjsJson.map((featureJson) => Subjects.fromJson(featureJson))
                .toList();
        print("_subjects :" + _subjects.toString());
      }
        //classrooms
        List<Classrooms> _classrooms;
        if (Json['classrooms'] != null) {
          var tagObjsJson = Json['classrooms'] as List;
          print("//********************");
          print(tagObjsJson);
          _classrooms =
              tagObjsJson.map((featureJson) => Classrooms.fromJson(featureJson))
                  .toList();
          print("_classrooms :" + _classrooms.toString());

        }




    return School(
              students: _student,
              subjects: _subjects,
              classrooms: _classrooms


            //top_students: List<topstudents>.from(Json["top_students"].map((x) => x)),
          );
        }


}