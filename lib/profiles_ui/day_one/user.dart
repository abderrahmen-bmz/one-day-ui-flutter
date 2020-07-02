class User {
  User({
    this.name,
    this.address,
    this.about,
  });

  String name;
  String address;
  String about;
}

class Profile {
  Profile({
    this.user,
    this.followers,
    this.following,
    this.friends,
  });

  User user;
  int followers;
  int following;
  int friends;
}
