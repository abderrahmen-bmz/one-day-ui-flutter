import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.bars),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.cog),
              ),
            ],
          );
  }
}