import 'package:builtup/utils/constant.dart';
import 'package:builtup/utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:builtup/models/user.dart' as model;
import 'package:flutter/services.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;
    DocumentSnapshot snap =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(snap);
  }

  //signup user
  Future<String> signUpUser(
      {required String email, required String password, required String username
      //required String bio,
      //required Uint8List file
      }) async {
    String res = " ";
    try {
      if (username.isNotEmpty ||
              email.isNotEmpty ||
              password.isNotEmpty ||
              username.isNotEmpty
          //bio.isNotEmpty
          // ignore: unnecessary_null_comparison
          //    file != null
          ) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        // String photoUrl =
        //     await StorageMethods().uploadImageToStorage('profilePics', file);

        model.User user = model.User(
          username: username,
          uid: cred.user!.uid,
          email: email,
          //bio: bio,
          //photoUrl: photoUrl,
        );

        //verification link
        // User? use = FirebaseAuth.instance.currentUser;
        //
        // if (use != null && !use.emailVerified) {
        //   await use.sendEmailVerification();
        // }
        //add user in databse
        await _firestore.collection('users').doc(cred.user!.uid).set(
              user.toJson(),
            );
        res = "sucess";
      } else {
        res = "Please Enter all the fields";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = 'The Email is badly formatted';
      } else if (err.code == 'weak-password') {
        res = 'Your Password should be more than 6 char';
      } else if (err.code == 'email-already-in-use') {
        res = 'Email already in use. Please use login screen to login';
      }
    }
    // catch (err) {
    //   res = err.toString();
    // }
    return res;
  }

  //login user
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "Some error";
    User? use = FirebaseAuth.instance.currentUser;

    // try {
    //   if (email.isNotEmpty || password.isNotEmpty) {
    //     await _auth.signInWithEmailAndPassword(
    //         email: email, password: password);
    //     res = 'sucess';
    //   } else {
    //     res = "Please Enter all the fields";
    //   }
    // }
    try {
      //if (email.isNotEmpty || password.isNotEmpty && use!.emailVerified) {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'sucess';
      } else {
        res = "Please Enter all the fields";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Future<void> resetPassword(String email) async {
  //   await _auth.sendPasswordResetEmail(email: email);
  // }
  Future<AuthErrors> passwordReset(String email) async {
    try {
      AuthErrors authErrors = AuthErrors.UNKNOWN;
      await _auth.sendPasswordResetEmail(email: email);
      authErrors = AuthErrors.SUCCESS;
      print("Password Reset Link Send");
      return authErrors;
    } on PlatformException catch (e) {
      return catchException(e);
    }
  }

  AuthErrors catchException(Exception e) {
    AuthErrors errorType = AuthErrors.UNKNOWN;
    /*if (e is PlatformException) {
      if (Platform.isIOS) {
        switch (e.message) {
          case 'There is no user record corresponding to this identifier. The user may have been deleted.':
            errorType = AuthErrors.UserNotFound;
            break;
          case 'The password is invalid or the user does not have a password.':
            errorType = AuthErrors.PasswordNotValid;
            break;
          case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
            errorType = AuthErrors.NetworkError;
            break;
          case 'Too many unsuccessful login attempts.  Please include reCaptcha verification or try again later':
            errorType = AuthErrors.TOOMANYATTEMPTS;
            break;
        // ...
          default:
            print('Case iOS ${e.message} is not yet implemented');
        }
      } else if (Platform.isAndroid) {
        switch (e.code) {
          case 'Error 17011':
            errorType = AuthErrors.UserNotFound;
            break;
          case 'Error 17009':
          case 'ERROR_WRONG_PASSWORD':
            errorType = AuthErrors.PasswordNotValid;
            break;
          case 'Error 17020':
            errorType = AuthErrors.NetworkError;
            break;
        // ...
          default:
            print('Case Android ${e.message} ${e.code} is not yet implemented');
        }
      }
    }*/

    print('The error is $errorType');
    return errorType;
  }
}
