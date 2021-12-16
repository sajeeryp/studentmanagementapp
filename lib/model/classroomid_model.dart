
import 'package:flutter/cupertino.dart';

class Class {
  int size;
  String subject;
  String layout;
  int id;
  String name;

  Class({ this.size,this.layout,this.subject,this.id, this.name});

  factory Class.fromJson(Map<String, dynamic> Json) {

    print( Json["age"]);
    print( Json["email"]);
    print( Json["id"]);
    print( Json["name"]);

    return Class(
      size: Json["size"],
      layout: Json["layout"],
      id: Json["id"],
      name: Json["name"],
      subject: Json["subject"],
    );
  }
}