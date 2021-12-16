
import 'package:flutter/cupertino.dart';

class Sub {
  int credits;
  String teacher;
  int id;
  String name;


  Sub({ this.teacher,this.credits,this.id, this.name});

  factory Sub.fromJson(Map<String, dynamic> Json) {

    print( Json["age"]);
    print( Json["email"]);
    print( Json["id"]);
    print( Json["name"]);

    return Sub(
      credits: Json["credits"],
      teacher: Json["teacher"],
      id: Json["id"],
      name: Json["name"],
    );
  }
}