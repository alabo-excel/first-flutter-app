
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation {

  static late FluroRouter router;

  static push(
      BuildContext context, String path, {
        bool replace = false, bool clearStack = false}){
    FocusScope.of(context).unfocus();
    router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transition: TransitionType.cupertino
    );
  }

  static void goBack(BuildContext context){
    FocusScope.of(context).unfocus();
    Navigator.pop(context);
  }

}