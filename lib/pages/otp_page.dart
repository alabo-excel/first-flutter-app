import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/res/gaps.dart';
import 'package:sk/widgets/image_loader.dart';

import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/app_text.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                  text: 'Verify Phone Number',
                  fontWeight: FontWeight.w600,
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  child: Wrap(
                    children: [
                      SizedBox(
                        child: AppText(
                          text:
                              'Please enter the 6-digit verification code sent',
                          size: 24.w,
                        ),
                      ),
                      SizedBox(
                        child: AppText(
                          text: ' +8625485395858',
                          color: Colors.blue,
                          size: 24.w,
                        ),
                      ),
                      SizedBox(
                        child: AppText(
                          text: ', valid for tent minuts. ',
                          size: 24.w,
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 500.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextFormField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextFormField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextFormField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                        height: 80.w,
                        child: TextFormField(
                          onChanged: (value) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 231, 226, 226)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: AppText(
                        text: 'Re-acquire ',
                        size: 24.w,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      child: AppText(
                        text: 'the verification code after 56 sec',
                        size: 24.w,
                      ),
                    ),
                  ],
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigation.push(context, Routes.resetPassword);
                    },
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
              ],
            ),
          ),
          // width: double.infinity,
        ),
      ),
    );
  }
}
