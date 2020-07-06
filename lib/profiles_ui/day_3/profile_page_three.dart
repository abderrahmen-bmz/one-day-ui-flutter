import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/models/provider.dart';
import 'package:one_day_ui/profiles_ui/models/user.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/custom_button_bar.dart';

class ProfilePageThree extends StatefulWidget {
  @override
  _ProfilePageThreeState createState() => _ProfilePageThreeState();
}

class _ProfilePageThreeState extends State<ProfilePageThree> {
  Profile profile = ProfileProvider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/bg11.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            textTitle: 'prfiles',
          ),
          body: Stack(
            children: <Widget>[
              _bodyContent(context),
              _profileImage(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _bodyContent(context) {
    return Positioned(
      left: 16,
      right: 16,
      top: MediaQuery.of(context).size.height * 0.1,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(top: 75),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Text(
              profile.user.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 24),
              child: Text(
                profile.user.address,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: _followButton(context),
            ),
            _divider(context),
            _counter(context),
            _divider(context),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'PHOTOS(${profile.friends.toString()})',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            _photos(context),
            //   ..._aboutMe(context),
            _friends(context),
            //   _contacts(context),
          ],
        ),
      ),
    );
  }

  Widget _profileImage(context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.07 - 30,
      left: MediaQuery.of(context).size.width / 2 - 50,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('general-assets/pic.jpg'),
                fit: BoxFit.cover),
            shape: BoxShape.circle),
        child: null,
      ),
    );
  }

  Color _buttonColor = Color(0xFFf05522);

  Widget _followButton(context) {
    return Align(
      child: MaterialButton(
        onPressed: () {},
        color: _buttonColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
          child: Text(
            'FOLLOW',
            style: TextStyle(color: Colors.white),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }

  Widget _divider(context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  Widget _counter(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomBottomBar(bottomTitle: 'Follower', bottomCounter: '123'),
          CustomBottomBar(bottomTitle: 'Follower', bottomCounter: '123'),
          CustomBottomBar(bottomTitle: 'Follower', bottomCounter: '123'),
        ],
      ),
    );
  }

  Widget _photos(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24),
      height: 125,
      child: ListView(
        children: List.generate(15, (index) {
          return Container(
            width: 125,
            height: 125,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('general-assets/bg.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          );
        }).toList(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  List<Widget> _aboutMe(context) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Text(
          'ABOUT ME',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          profile.user.about,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              height: 1.4,
              letterSpacing: 1.2),
        ),
      )
    ];
  }

  Widget _friends(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        "FRIENDS (${profile.friends.toString()})",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _contacts(context) {}
}
