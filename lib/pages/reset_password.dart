import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/gaps.dart';
import '../widgets/app_text.dart';

import '../routes/routes.dart';
import '../util/navigation_utils.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPasswordPage> {
  bool _obscureText = true;
  bool _obscureText2 = true;

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
                SizedBox(
                  width: 464.w,
                  child: AppText(
                    text: 'Please set a new account password',
                    size: 38.37.w,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    text:
                        'The login password is used to log in to the OpenIM account',
                    size: 24.w,
                    color: Colors.blue,
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 24.w,
                    text: 'Password',
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 518.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Please enter password',
                      hintStyle: TextStyle(
                        fontSize: 24.w,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText: _obscureText,
                  ),
                ),
                Gaps.vGap12,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 20.w,
                    text: '6-20 characters',
                    textAlign: TextAlign.left,
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 24.w,
                    text: 'Confirm Password',
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 518.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Please enter password',
                      hintStyle: TextStyle(
                        fontSize: 24.w,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText2 = !_obscureText2;
                          });
                        },
                        child: Icon(_obscureText2
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText: _obscureText2,
                  ),
                ),
                Gaps.vGap12,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 20.w,
                    text: '6-20 characters',
                    textAlign: TextAlign.left,
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigation.push(context, Routes.profilePic);
                    },
                    // ignore: prefer_const_constructors
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        shape: const StadiumBorder()),
                    child: AppText(
                      text: 'Confirm the changes',
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
