import 'package:flutter/material.dart';

class LoginPageOne extends StatefulWidget {
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  Color _greenColor = Color(0xFFD4F960);
  var _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'general-assets/login1.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          focusColor: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white70),
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white70,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          focusColor: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: _greenColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF358D1E),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
