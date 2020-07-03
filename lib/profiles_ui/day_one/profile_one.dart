import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/day_one/provider.dart';
import 'package:one_day_ui/profiles_ui/day_one/user.dart';
import 'package:one_day_ui/profiles_ui/day_one/profile_painter.dart';
import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/custom_button_bar.dart';
//import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile profile = ProfileProvider.getProfile();
  static Color _textColor = Color(0xFF4e4e4e);

  bool _visibile = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visibile = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/bg.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
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
          ),
          body: Stack(
            children: <Widget>[
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: MediaQuery.of(context).size.width * 0.05,
                top: _visibile
                    ? MediaQuery.of(context).size.height * 0.23
                    : MediaQuery.of(context).size.height * 0.21,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: _visibile ? 1 : 0,
                  child: Avatar(
                    minRadius: 35.0,
                    photoPath:"general-assets/pic.jpg",
                  ),
                ),
              ),
              _bodyText(context),
              _bottomBar(context),
            ],
          ),
        ),
      ],
    );
  }



  Widget _bottomBar(BuildContext context) {
    return Positioned(
      bottom: 5.0,
      left: 24,
      right: 24,
      child: AnimatedOpacity(
        opacity: _visibile ? 1 : 0,
        duration: Duration(milliseconds: 300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomBottomBar(
              bottomTitle: 'FOLLOWERS',
              bottomCounter: profile.followers.toString(),
            ),
            CustomBottomBar(
              bottomTitle: 'FOLLOWING',
              bottomCounter: profile.following.toString(),
            ),
            CustomBottomBar(
              bottomTitle: 'FRIENDS',
              bottomCounter: profile.friends.toString(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyText(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.34,
      bottom: 0,
      right: 24,
      left: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              profile.user.name,
              style: TextStyle(
                  color: _textColor, fontWeight: FontWeight.w900, fontSize: 32),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.grey.shade400,
              ),
              Text(
                profile.user.address,
                style: TextStyle(
                  color: _textColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18, bottom: 16),
            child: Text(
              'ABOUT ME',
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              profile.user.about,
              softWrap: true,
              style: TextStyle(
                color: _textColor,
                fontSize: 18,
                height: 1.4,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

     

  
}
