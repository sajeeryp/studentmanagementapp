
import 'package:flutter/cupertino.dart';

class Subjects {
  int credit;
  String teacher;
  int id;
  String name;


  Subjects({ this.credit,this.teacher,this.id, this.name});

  factory Subjects.fromJson(Map<String, dynamic> Json) {

    print( Json["credit"]);
    print( Json["teacher"]);
    print( Json["id"]);
    print( Json["name"]);

    return Subjects(
      credit: Json["credit"],
      teacher: Json["teacher"],
      id: Json["id"],
      name: Json["name"],
    );
  }
}