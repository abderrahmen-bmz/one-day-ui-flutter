import 'package:flutter/material.dart';
import 'package:one_day_ui/login_ui/day_1/login_page_one.dart';
import 'package:one_day_ui/profiles_ui/day_5/profile_page_five.dart';
import 'package:one_day_ui/profiles_ui/day_4/profile_page_four.dart';
import 'package:one_day_ui/profiles_ui/day_1/profile_page_one.dart';
import 'package:one_day_ui/profiles_ui/day_2/profile_page_two.dart';
import 'package:one_day_ui/profiles_ui/day_3/profile_page_three.dart';

import 'profiles_ui/day_6/profile_day_six.dart';

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
      home: LoginPageOne(),
    );
  }
}
