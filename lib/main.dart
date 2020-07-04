import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/day_one/profile_page_one.dart';
import 'package:one_day_ui/profiles_ui/day_two/profile_page_two.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Day UI Flutter',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
   
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePageTwo()
    );
  }
}


