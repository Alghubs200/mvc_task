import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String profilePhoto;
  String uid;
  String email;

  User(
      {required this.name,
      required this.profilePhoto,
      required this.uid,
      required this.email});
  Map<String, dynamic> toJson() =>
      {'name': name, 'profilePic': profilePhoto, 'uid': uid, 'email': email};

  static User formSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      email: snapshot['email'],
      profilePhoto: snapshot['profilePhoto'],
      uid: snapshot['uid'],
      name: snapshot['snapshot'],
    );
  }
}
