import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:sk/pages/account_settings_page.dart';

import '../pages/about_us_page.dart';
import '../pages/address_blacklist_page.dart';
import '../pages/forget_password_page.dart';
import '../pages/login_page.dart';
import '../pages/my_center_page.dart';
import '../pages/my_information_page.dart';
import '../pages/profile_pic_page.dart';
import '../pages/reset_password.dart';
import '../pages/signup_page.dart';
import '../pages/otp_page.dart';

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const LoginPage();
});

var signupHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const SignupPage();
});

var otpHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const OtpPage();
});

var profilePicHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const ProfilePicPage();
});

var forgetPasswordHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const ForgetPasswordPage();
});

var resetPasswordHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const ResetPasswordPage();
});

var myCenterHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const MyCenterPage();
});

var myInformationHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const MyInformationPage();
});

var accountSettingsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const AccountSettingsPage();
});


var aboutUsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const AboutUsPage();
});

var addressBlacklistHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
  return const AddressBlacklistPage();
});

// var homeHandler = Handler(
//     handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
//       return HomePage();
//     });