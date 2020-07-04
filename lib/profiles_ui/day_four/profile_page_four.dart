import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/app_bar.dart';

class ProfilePageFour extends StatefulWidget {
  @override
  _ProfilePageFourState createState() => _ProfilePageFourState();
}

class _ProfilePageFourState extends State<ProfilePageFour> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/profile_4_background.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            textTitle: "PRFILE",
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage('general-assets/pic.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
