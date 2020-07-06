import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    @required this.bottomTitle,
    @required this.bottomCounter,
  });

  final String bottomTitle;
  final String bottomCounter;
  static Color _textColor = Color(0xFF4e4e4e);

  TextStyle _bottomBarTitle = TextStyle(
    color: Colors.grey.shade400,
  );
  TextStyle _bottomBarCounter = TextStyle(
    color: _textColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          bottomTitle,
          style: _bottomBarTitle,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          bottomCounter,
          style: _bottomBarCounter,
        ),
      ],
    );
  }
}
