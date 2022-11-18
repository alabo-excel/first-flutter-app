import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/res/gaps.dart';
import 'package:sk/widgets/image_loader.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/app_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.vGap50,
                LoadAssetImage(
                  "chitchat",
                  width: 230.84.w,
                ),
                Gaps.vGap50,
                AppText(
                  size: 38.w,
                  text: 'Welcome',
                  fontWeight: FontWeight.w600,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Checkbox(
                        value: _checkbox,
                        onChanged: (bool? value) {
                          setState(() {
                            _checkbox = value;
                          });
                        },
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 466.68.w,
                          child: AppText(
                            text: 'I have read and agree to the',
                            size: 24.w,
                          ),
                        ),
                        SizedBox(
                          width: 466.68.w,
                          child: Row(
                            children: [
                              SizedBox(
                                child: AppText(
                                  text: 'User Agreement',
                                  size: 24.w,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                child: AppText(
                                  text: ' and ',
                                  size: 24.w,
                                ),
                              ),
                              SizedBox(
                                child: AppText(
                                  text: 'Privacy policy.',
                                  size: 24.w,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: ElevatedButton(
                    onPressed: _checkbox == true
                        ? () {
                            Navigation.push(context, Routes.otp);
                          }
                        : null,
                    // ignore: prefer_const_constructors
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        shape: const StadiumBorder()),
                    child: AppText(
                      text: 'Register',
                      size: 30.w,
                      color: Colors.white,
                    ),
                  ),
                ),
                Gaps.vGap50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: AppText(
                        text: 'Already have an account? ',
                        size: 24.w,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigation.push(context, Routes.login);
                      },
                      child: AppText(
                        text: 'Login',
                        size: 24.w,
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // width: double.infinity,
        ),
      ),
    );
  }
}
