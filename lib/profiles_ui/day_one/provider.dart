import 'package:one_day_ui/profiles_ui/day_one/user.dart';

class ProfileProvider { 

  static Profile getProfile(){
    return Profile(
      user: User(name:'Abderrahmen Bmz' ,address:'Chlef  Algeria' ,about:'I am Software Enginner' ),
      followers: 2200,
      following: 325,
      friends: 158
    );
    
  }
}