import 'package:flutter/material.dart';

SnackBar ksnackBar(BuildContext context, String message) {
  return SnackBar(
    duration: Duration(seconds: 2),
    content: Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.black,
  );
}

//autherrors
enum AuthErrors {
  UserNotFound,
  PasswordNotValid,
  NetworkError,
  SUCCESS,
  TOOMANYATTEMPTS,
  UNKNOWN
}

class AuthErrorsHelper {
  static String getValue(AuthErrors authError) {
    switch (authError) {
      case AuthErrors.UserNotFound:
        return "No such User Found";
      case AuthErrors.PasswordNotValid:
        return "Password is not valid";
      case AuthErrors.NetworkError:
        return "A network error has occurred, please try again";
      case AuthErrors.SUCCESS:
        return "Password reset link has been sent";
      case AuthErrors.UNKNOWN:
        return "Something went wrong!";
      case AuthErrors.TOOMANYATTEMPTS:
        return "Too many unsuccessful login attempts.  Please include reCaptcha verification or try again later";
      default:
        return "opps, please Try again";
    }
  }
}

var kTextFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
    borderRadius: BorderRadius.circular(16),
  ),
  hintStyle:
      TextStyle(height: 1.5, fontWeight: FontWeight.w300, color: Colors.black),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
);
