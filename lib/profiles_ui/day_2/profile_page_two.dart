import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/avatar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/custom_button_bar.dart';
import 'package:one_day_ui/profiles_ui/models/provider.dart';
import 'package:one_day_ui/profiles_ui/models/user.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageTwo extends StatefulWidget {
  @override
  _ProfilePageTwoState createState() => _ProfilePageTwoState();
}

class _ProfilePageTwoState extends State<ProfilePageTwo> {
  static Color _textColor = Color(0xFF4e4e4e);
  //bool _visibile = false;
  Profile profile = ProfileProvider.getProfile();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/background/bg12.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(textTitle: ''),
          body: Stack(
            children: <Widget>[
              _profileTitle(context),
              _bodyContent(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _profileTitle(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      shape: BoxShape.circle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      shape: BoxShape.circle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: ExactAssetImage('general-assets/pic.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Abderrahmen BMZ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  letterSpacing: 1.4,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Text(
            '666 Followrs',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  _bodyContent(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.35,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _counters(context),
            _divider(context),
            SizedBox(
              height: 10,
            ),
            ..._about(),
            SizedBox(
              height: 10,
            ),
            _divider(context),
            SizedBox(
              height: 8,
            ),
            _friends(),
            SizedBox(
              height: 8,
            ),
            _contacts(context),
          ],
        ),
      ),
    );
  }

  Widget _counters(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
    );
  }

  Widget _divider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  List<Widget> _about() {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Text(
          'ABOUT ME',
          style: TextStyle(
            color: _textColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          profile.user.about,
          style: TextStyle(
            color: _textColor,
            fontSize: 15,
            height: 1.4,
            letterSpacing: 1.2,
          ),
        ),
      )
    ];
  }

  Widget _friends() {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Text(
        "FRIENDS (${profile.friends.toString()})",
        style: TextStyle(
          color: _textColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _contacts(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16),
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(25, (index) {
          return Container(
            width: 75,
            margin: EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('general-assets/pic.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          );
        }).toList(),
      ),
    );
  }
}
