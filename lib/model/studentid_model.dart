
import 'package:flutter/cupertino.dart';

class Credits {
  int age;
  String email;
  int id;
  String name;


  Credits({ this.age,this.email,this.id, this.name});

  factory Credits.fromJson(Map<String, dynamic> Json) {

    print( Json["age"]);
    print( Json["email"]);
    print( Json["id"]);
    print( Json["name"]);

    return Credits(
      age: Json["age"],
      email: Json["email"],
      id: Json["id"],
      name: Json["name"],
    );
  }
}