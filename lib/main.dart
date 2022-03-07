import 'package:flutter/material.dart';
import 'people_list.dart';
import 'people.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'look up navigation',
      theme: ThemeData(
        primarySwatch: Colors.yellow,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PeopleListScreen(),
    );
  }
}