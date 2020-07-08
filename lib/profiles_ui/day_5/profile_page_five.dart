import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/custom_button_bar.dart';
import 'package:one_day_ui/profiles_ui/models/provider.dart';
import 'package:one_day_ui/profiles_ui/models/user.dart';

class ProfilePageFive extends StatefulWidget {
  @override
  _ProfilePageFiveState createState() => _ProfilePageFiveState();
}

class _ProfilePageFiveState extends State<ProfilePageFive> {
  Profile profile = ProfileProvider.getProfile();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "general-assets/bg5.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            textTitle: "PROFILE",
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.of(context).size.height * .50,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildProfile(context),
                    _buildBio(),
                    _buildContent(context),
                    _buildDivider(context),
                    _buildCounters(context),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
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
            shape: BoxShape.circle,
            image: DecorationImage(
                image: ExactAssetImage('general-assets/pic.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Spacer(
          flex: 2,
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
            child: Text(
              'ADD FRIEND',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
            child: Text(
              'FOLLOW',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
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

  Widget _buildContent(contenxt) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
      child: Text(
        profile.user.about,
        style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.05),
      ),
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
}
