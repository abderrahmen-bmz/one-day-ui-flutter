import 'package:flutter/material.dart';
import 'package:one_day_ui/profiles_ui/commun_widgets/app_bar.dart';

class ProfilePageFour extends StatefulWidget {
  @override
  _ProfilePageFourState createState() => _ProfilePageFourState();
}

class _ProfilePageFourState extends State<ProfilePageFour> {
  Color _buttonColor = Color(0xFFf05522);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/profile_4_background.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            textTitle: "PRFILE",
          ),
          body: Stack(
            children: <Widget>[
              _bodyContent(context),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.07 - 10,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage('general-assets/sofi.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Widget _profileImage(context) {}
  Widget _bodyContent(context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.width * 0.1,
      left: 20,
      right: 20,
      child: Container(
        padding: EdgeInsets.only(top: 70),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: <Widget>[
              Text(
                'Sofiane Bouzid',
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
              _followButton(context),
              SizedBox(
                height: 10.0,
              ),
              _divider(context),
              _info('PHONE NUMBER', '00 - 000 - 000', Icons.phone),
              _info('EMAIL', 'Sofianebouzid4@gmail.com', Icons.email),
              _info('ADDRESS', 'Chlef - Algeria', Icons.add_location)
            ],
          ),
        ),
      ),
    );
  }

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
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }

  Widget _divider(context) {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  Widget _info(String title, String data, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: _buttonColor,
                size: 18,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                data,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
