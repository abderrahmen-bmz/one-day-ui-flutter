import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/custom_button_bar.dart';
import 'package:one_day_ui/profiles_ui/models/provider.dart';
import 'package:one_day_ui/profiles_ui/models/user.dart';

class ProfilePageSix extends StatefulWidget {
  @override
  _ProfilePageSixState createState() => _ProfilePageSixState();
}

// TODO : animation
class _ProfilePageSixState extends State<ProfilePageSix> {
  Profile profile = ProfileProvider.getProfile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'PROFILE',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: _textColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: _textColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildProfile(context),
            _buildBio(),
            _buildContacts(context),
            _buildCounters(context),
            _buildDivider(context),
            ..._buildAbout()
          ],
        ),
      ),
    );
  }

  Widget _buildProfile(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(
                    'general-assets/pic.jpg',
                  ),
                  fit: BoxFit.cover),
              shape: BoxShape.circle),
        ),
        Spacer(
          flex: 2,
        ),
        RaisedButton(
          onPressed: () {},
          elevation: 0,
          child: Text('ADD FRIEND'),
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
        Spacer(
          flex: 1,
        ),
        RaisedButton(
          onPressed: () {},
          color: Colors.black,
          child: Text(
            'FOLLOW',
            style: TextStyle(color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(25))),
        )
      ],
    );
  }

  Widget _buildBio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          profile.user.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Software Enginner',
          style: TextStyle(
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }

  Widget _buildCounters(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
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

  Widget _buildContacts(context) {
    return Container(
      width: double.infinity,
      height: 75,
      padding: EdgeInsets.only(left: 24),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) {
          return Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: ExactAssetImage('general-assets/bg01.jpg'),
                  fit: BoxFit.cover),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  static Color _textColor = Color(0xFF4e4e4e);

  List<Widget> _buildAbout() {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'ABOUT ME',
          style: TextStyle(
            color: _textColor,
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
            fontSize: 13,
            height: 1.4,
            letterSpacing: 1.2,
          ),
        ),
      )
    ];
  }
}
