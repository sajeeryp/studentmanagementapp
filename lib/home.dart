import 'package:flutter/material.dart';
import 'package:students/view_classrooms.dart';
import 'package:students/view_data.dart';
import 'package:students/view_subjects.dart';

import 'model/model_subjects.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  //color: Colors.red,
                  //  height: 80,
                  //width: 700,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("Students",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("detailed list",
                        //  child: Text(user.discription+","+ user.noofquestions+","+user.duration,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Align(alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Text("Students details : ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Align(alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 120,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Home()),
                                    );
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius
                                          .circular(5.0),
                                    ),
                                    color: Colors.blue,
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("View more",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight
                                                .w300,
                                            fontStyle: FontStyle.normal,)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),




          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  //color: Colors.red,
                  //  height: 80,
                  //width: 700,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("Subjects",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("detailed list",
                        //  child: Text(user.discription+","+ user.noofquestions+","+user.duration,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Align(alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Text("Subject details : ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Align(alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 120,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Subject()),
                                    );
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius
                                          .circular(5.0),
                                    ),
                                    color: Colors.blue,
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("View more",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight
                                                .w300,
                                            fontStyle: FontStyle.normal,)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),




          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  //color: Colors.red,
                  //  height: 80,
                  //width: 700,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("Classrooms",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text("detailed list",
                        //  child: Text(user.discription+","+ user.noofquestions+","+user.duration,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Align(alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Text("Classroom details : ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Align(alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 120,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Classrooo()),
                                    );
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius
                                          .circular(5.0),
                                    ),
                                    color: Colors.blue,
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("View more",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight
                                                .w300,
                                            fontStyle: FontStyle.normal,)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),









        ],
      ),
    );
  }
}