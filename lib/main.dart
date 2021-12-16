import 'package:flutter/material.dart';
import 'package:students/viewmodel/view_model.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyViewModel>(
      create: (context) =>MyViewModel(),
      child:
     MaterialApp(
      title: 'Notify',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     ),);
  }
}