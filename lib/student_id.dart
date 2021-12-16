import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students/viewmodel/view_model.dart';

import 'model/main_model.dart';
import 'model/studentid_model.dart';


class Studentid extends StatefulWidget {
  String id;


  Studentid(
      {
        this.id,
       });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Studentid> {

  String id;
  MyViewModel vm;




  @override
  Widget build(BuildContext context) {
    vm = Provider.of<MyViewModel>(context);
id=widget.id;
print("i-----------"+id.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: Column(
        children: [
      FutureBuilder(
    future: vm.studentid(id),
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
    Credits user = response['user'];
    return
    ListView
        .builder(
    itemCount:1,

    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context,
    index) {
      return
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
                child:  Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text(user.name,
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
                child:  Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("email : "+ user.email,
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
                        child: Column(
                          children:  [
                            Text("id : " +user.id.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 15,),

                            Text("Age : "+user.age.toString(),
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

                ],
              ),
            ],
          ),
        );
    } );




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
      ), ],
      ),
    );
  }
}