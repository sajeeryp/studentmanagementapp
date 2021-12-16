import 'package:flutter/material.dart';
import 'package:students/model/main_model.dart';
import 'package:students/model/main_model.dart';
import 'package:students/subject_id.dart';
import 'package:students/viewmodel/view_model.dart';
import 'package:provider/provider.dart';


class Subject extends StatefulWidget {

  @override
  State<Subject> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Subject> {

  MyViewModel vm;


  @override
  Widget build(BuildContext context) {

    vm = Provider.of<MyViewModel>(context);


    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: vm.subjects(),
            builder: (BuildContext context, AsyncSnapshot<Map<String,
                dynamic>> snapshot) {
              print("snap"+snapshot.data.toString());
              switch (snapshot
                  .connectionState) {
                case ConnectionState
                    .done:
                  {
                    Map<String, dynamic> response = snapshot.data;
                    School user = response['user'];
                    return
                      ListView
                          .builder(
                          itemCount:user.subjects.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,
                              index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child:  Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Align(alignment: Alignment.topLeft,
                                        child: Text(user.subjects[index].name,
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 600,
                                    child:  Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Align(alignment: Alignment.topLeft,
                                        child: Text(user.subjects[index].teacher,
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
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
                                              children:  [
                                                Text("Id : " +user.subjects[index].id.toString(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
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
                                                  child:ElevatedButton(
                                                    child: const Text("View"),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Subjectid(
                                                            id:user.subjects[index].id.toString()

                                                        )),
                                                      );
                                                      // your code
                                                    },
                                                    style: ButtonStyle(
                                                      backgroundColor: MaterialStateProperty.all(Colors.green),
                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(18.0),
                                                          )
                                                      ),
                                                    ),)
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
                            );
                          }
                      );
                  }
                default:
                  return Container(
                    height: 300,

                    child: Align(
                        alignment: Alignment.bottomCenter,

                        child:CircularProgressIndicator(
                          value: 0.8,
                          valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
                        )
                    ),
                  );
              }
            }
        ),
      ),
    );
  }
}