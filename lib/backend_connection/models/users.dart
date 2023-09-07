class User {
  //initialized the user data models into null safety values
  int? id;
  String? firstname;
  String? lastname;
  String? username;
  String? email;
  String? password;

  String? token;
  String? profilePicture;

  //assigned the values
  User(
      {this.id,
      this.firstname,
      this.lastname,
      this.username,
      this.email,
      this.password,
      this.token,
      this.profilePicture});

  //convert the data format into json format
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user']['id'],
      firstname: json['user']['firstname'],
      lastname: json['user']['lastname'],
      username: json['user']['username'],
      email: json['user']['email'],
      password: json['user']['password'],
      token: json['user']['token'],
      profilePicture: json['user']['profilePicture'],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "username": username,
        "email": email,
        "password": password,
        "token": token,
        "profilePicture": profilePicture,
      };
}
