
import 'package:flutter/cupertino.dart';

class Students {
  int age;
  String email;
  int id;
  String name;


  Students({ this.age,this.email,this.id, this.name});

  factory Students.fromJson(Map<String, dynamic> Json) {

    print( Json["age"]);
    print( Json["email"]);
    print( Json["id"]);
    print( Json["name"]);

    return Students(
      age: Json["age"],
      email: Json["email"],
      id: Json["id"],
      name: Json["name"],
    );
  }
}