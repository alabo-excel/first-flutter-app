import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../res/gaps.dart';
import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/app_text.dart';
import '../widgets/image_loader.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  leading: Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                AppText(
                  text: 'Forget the password',
                  size: 38.37.w,
                  fontWeight: FontWeight.w600,
                ),
                Gaps.vGap50,
                LoadAssetImage(
                  "Password",
                  width: 233.w,
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 24.w,
                    text: 'Cellphone Number',
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 518.w,
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber value) {},
                    hintText: 'Please enter the phone number',
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                      setSelectorButtonAsPrefixIcon: true,
                      leadingPadding: 1,
                      // showFlags: false,
                    ),
                    textStyle: TextStyle(
                      fontSize: 24.w,
                    ),
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigation.push(context, Routes.otp);
                    },
                    // ignore: prefer_const_constructors
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        shape: const StadiumBorder()),
                    child: AppText(
                      text: 'Get verification code',
                      size: 30.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
