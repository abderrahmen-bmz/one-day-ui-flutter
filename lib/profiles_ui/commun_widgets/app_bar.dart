import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key key , this.textTitle , this.actionsButton})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  final String textTitle ; 
  final IconButton actionsButton;

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        textTitle,
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
