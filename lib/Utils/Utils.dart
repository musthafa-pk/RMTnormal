import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utils{
  //user 1
  static String userId = '65f7cfb7deb7d03c6ba652cc';

    // next field focused in textField
  static fieldFocusChange(
      BuildContext context,
      FocusNode current,
      FocusNode nextFocus,){
      current.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
  }

   static toastMessage(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.black,
    textColor: Colors.white,
  );}

  static flushBarErrorMessage(String message , BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.easeOut,
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: BorderRadius.circular(20),
          icon: const Icon(Icons.error ,size: 28,color: Colors.white,),
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          padding: const EdgeInsets.all(15),
          message: message,
          backgroundColor: Colors.lightGreen,
          messageColor: Colors.white,
          duration: const Duration(seconds: 3),
        )..show(context),
    );}

    static snackBar(String message , BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
          content: Text(message))
    );
  }


}