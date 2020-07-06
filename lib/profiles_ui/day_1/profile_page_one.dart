import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/models/provider.dart';
import 'package:one_day_ui/profiles_ui/models/user.dart';
import 'package:one_day_ui/profiles_ui/day_1/profile_painter.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/custom_button_bar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageOne extends StatefulWidget {
  @override
  _ProfilePageOneState createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<ProfilePageOne> {
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
          'general-assets/background1.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            textTitle: 'PROFILE',
          ),
          body: Stack(
            children: <Widget>[
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.22,
                child: CircleAvatar(
                  minRadius: 40,
                  backgroundImage: ExactAssetImage('general-assets/pic.jpg'),
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
