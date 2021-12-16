import 'package:flutter/material.dart';
import 'package:students/model/main_model.dart';
import 'package:students/model/main_model.dart';
import 'package:students/viewmodel/view_model.dart';
import 'package:provider/provider.dart';

import 'classroom_id.dart';


class Classrooo extends StatefulWidget {

  @override
  State<Classrooo> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Classrooo> {

  MyViewModel vm;


  @override
  Widget build(BuildContext context) {

    vm = Provider.of<MyViewModel>(context);


    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: vm.classrooms(),
            builder: (BuildContext context, AsyncSnapshot<Map<String,
                dynamic>> snapshot) {
              print("snap"+snapshot.data.toString());
              // if (snapshot.connectionState == ConnectionState.done) {
              //   Map<String, dynamic> response = snapshot.data;
              //   School user = response['user'];
              // if ( user != null) {

              switch (snapshot
                  .connectionState) {
                case ConnectionState
                    .done:
                  {
                    Map<String, dynamic> response = snapshot.data;
                    School user = response['user'];
                    // if (snapshot
                    //     .hasError) {
                    //   return Scaffold(
                    //     body: Center(
                    //       child: Text(
                    //           'loading'),
                    //     ),
                    //   );
                    // } else {
                    //   print(user.students
                    //       .length);
                    // }

                    //SizedBox(height: 0,);
                    return
                      ListView
                          .builder(
                          itemCount:user.classrooms.length,

                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,


                          // Container height ratio
                          itemBuilder: (context,
                              index) {
                            // final revision = this
                            //     .vm
                            //     .review[index];
                            //

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
                                    //color: Colors.red,
                                    //  height: 80,
                                    //width: 700,
                                    child:  Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Align(alignment: Alignment.topLeft,
                                        child: Text(user.classrooms[index].name,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
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
                                        child: Text(user.classrooms[index].layout,
                                          //  child: Text(user.discription+","+ user.noofquestions+","+user.duration,

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

                                        // width:150,
                                        //height:0,
                                        // color: Colors.red,
                                        child: Align(alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Row(
                                              children:  [
                                                Text("Id : " +user.classrooms[index].id.toString(),
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
                                        //  color: Colors.red,
                                        child: Align(alignment: Alignment.bottomRight,
                                          //color:Colors.white10,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 120,
                                                  child: ElevatedButton(
                                                    child: const Text("View"),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => classrooomid(
                                                            id:user.classrooms[index].id.toString()

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