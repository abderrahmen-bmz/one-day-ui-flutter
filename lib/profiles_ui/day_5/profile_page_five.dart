import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/app_bar.dart';
import 'package:one_day_ui/profiles_ui/day_one/commun_widgets/custom_button_bar.dart';

class ProfilePageFive extends StatefulWidget {
  @override
  _ProfilePageFiveState createState() => _ProfilePageFiveState();
}

class _ProfilePageFiveState extends State<ProfilePageFive> {
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
            textTitle: "Profile",
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
                    _buildTop(context),
                    _buildName(),
                    _buildContent(context),
                    _buttomBar(context),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTop(context) {
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
        Row(
          children: <Widget>[
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
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
            SizedBox(
              width: 8.0,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.black,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
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
        )
      ],
    );
  }

  Widget _buildName() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Abdo Bmz',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Software Enginner',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildContent(contenxt) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'Software Enginner Enginner Software Enginner',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buttomBar(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomBottomBar(bottomTitle: 'FOLLOWS', bottomCounter: '175'),
          CustomBottomBar(bottomTitle: 'FOLLOWS', bottomCounter: '175'),
          CustomBottomBar(bottomTitle: 'FOLLOWS', bottomCounter: '175'),
        ],
      ),
    );
  }
}
