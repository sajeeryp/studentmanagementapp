
import 'package:flutter/cupertino.dart';

class Classrooms {
  int id;
  String layout;
  String name;
  int size;


  Classrooms({ this.id,this.layout,this.name, this.size});

  factory Classrooms.fromJson(Map<String, dynamic> Json) {

    print( Json["age"]);
    print( Json["email"]);
    print( Json["id"]);
    print( Json["name"]);

    return Classrooms(
      size: Json["size"],
      layout: Json["layout"],
      id: Json["id"],
      name: Json["name"],
    );
  }
}