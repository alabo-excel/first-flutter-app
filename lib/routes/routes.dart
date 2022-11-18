import 'package:fluro/fluro.dart';
import 'package:sk/routes/route_handlers.dart';

class Routes {
  // static String home = "/home";
  static String login = "/login";
  static String signup = "/signup";
  static String otp = "/otp";
  static String profilePic = "/profilePic";
  static String forgetPassword = "/forgetPassword";
  static String resetPassword = "/resetPassword";
  static String myCenter = "/myCenter";
  static String myInformation = "/myInformation";
  static String accountSettings = "/accountSettings";
  static String aboutUs = "/aboutUs";
  static String addressBlacklist = "/addressBlacklist";

  static void configureRoutes(FluroRouter router) {
    // router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(signup, handler: signupHandler);
    router.define(otp, handler: otpHandler);
    router.define(profilePic, handler: profilePicHandler);
    router.define(forgetPassword, handler: forgetPasswordHandler);
    router.define(resetPassword, handler: resetPasswordHandler);
    router.define(myCenter, handler: myCenterHandler);
    router.define(myInformation, handler: myInformationHandler);
    router.define(accountSettings, handler: accountSettingsHandler);
    router.define(aboutUs, handler: aboutUsHandler);
    router.define(addressBlacklist, handler: addressBlacklistHandler);
  }
}
