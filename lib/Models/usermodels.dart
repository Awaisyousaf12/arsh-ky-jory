class Usermodels {
  String? uid;
  String? username;
  String? email;
  String? profilepic;

  Usermodels({this.uid, this.username, this.email, this.profilepic});

  Usermodels.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    username = map['username'];
    email = map['email'];
    profilepic = map['profilepic'];
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'profilepic': profilepic
    };
  }
}
