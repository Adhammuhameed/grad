import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deb/models/my_user.dart';

class DataBaseUtils {
  static CollectionReference<MyUser> getUsersCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.Collection_Name)
        .withConverter<MyUser>(
            fromFirestore: (snap, _) => MyUser.fromJson(snap.data()!),
            toFirestore: (user, _) => user.toJson());
  }

 static Future<void> addUserToFirestore(String id, MyUser myUser){
    return getUsersCollection().doc(id).set(myUser);
  }
  static Future<MyUser?> readUserFromFirestore(String id)async{
    DocumentSnapshot<MyUser> UserRef=await getUsersCollection().doc(id).get();
    return UserRef.data();
  }
}
