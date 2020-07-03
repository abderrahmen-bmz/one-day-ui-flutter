import 'package:one_day_ui/profiles_ui/day_one/user.dart';

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
        user: User(
          name: 'Abderrahmen BMZ',
          address: "Chlef , Algeria",
          about:
              "Full-Stack Software Developer. I design, build & sometimes rescue applications. Have a project, idea or problem you'd like to discuss?",
        ),
        followers: 2318,
        following: 364,
        friends: 175);
  }
}


/**
 *  "In each of her images, I feel the heart that went into taking it, and it's the emotion of the image which penetrates through to be incredibly powerful. She travels all over the world and often around Australia. Like me, she has a deep love for Nepal and the pictures she took in the country really took my breath away.",
 */