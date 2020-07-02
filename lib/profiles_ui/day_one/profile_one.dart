import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/bg.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Profile'),
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
          ),
        )
      ],
    );
  }
}
