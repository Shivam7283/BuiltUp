import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  // final String photoUrl;
  final String username;
  //final String bio;

  const User({
    required this.email,
    required this.uid,
    //required this.photoUrl,
    required this.username,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "uid": uid,
      };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      username: snapshot['username'],
      uid: snapshot['uid'],
      email: snapshot['email'],
      //photoUrl: snapshot['photoUrl'],
      //bio: snapshot['bio'],
    );
  }
}
