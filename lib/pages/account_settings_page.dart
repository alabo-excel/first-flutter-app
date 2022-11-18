import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/gaps.dart';
import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/app_text.dart';
import '../widgets/checkbox.dart';
import 'chat_tab.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool _checkboxLang = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
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
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: AppText(
                  text: 'Account settings',
                  size: 28.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: 702.w,
                  child: Column(
                    children: [
                      Gaps.vGap30,
                      SizedBox(
                        width: 560.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 218, 213, 213),
                                  ),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigation.push(
                                      context, Routes.addressBlacklist);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: AppText(
                                        text: "Address book blacklist",
                                        size: 24.w,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color.fromARGB(255, 197, 187, 187),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Gaps.vGap30,
                            Row(
                              children: [
                                AppText(
                                  text: 'Chose a language',
                                  size: 20.w,
                                ),
                              ],
                            ),
                            Gaps.vGap50,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomCheckBox(
                                      value: _checkboxLang,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkboxLang = value;
                                        });
                                      },
                                    ),
                                    Gaps.hGap16,
                                    AppText(
                                      text: 'Simplified Chinese',
                                      size: 24.w,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomCheckBox(
                                      value: _checkboxLang,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkboxLang = value;
                                        });
                                      },
                                    ),
                                    Gaps.hGap16,
                                    AppText(
                                      text: 'English',
                                      size: 24.w,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Gaps.vGap50,
                            Row(
                              children: [
                                CustomCheckBox(
                                  value: _checkboxLang,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkboxLang = value;
                                    });
                                  },
                                ),
                                Gaps.hGap16,
                                AppText(
                                  text: 'Do not disturb',
                                  size: 24.w,
                                ),
                              ],
                            ),
                            Gaps.vGap50,
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (contex) => AlertDialog(
                                    title: AppText(
                                      text: 'Clear chat History',
                                      size: 24.sp,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    content: AppText(
                                      text:
                                          'Are you sure want to clear all chat history?',
                                      size: 24.4.sp,
                                    ),
                                    actions: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        // width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                close();
                                              },
                                              child: Container(
                                                width: 171.31.w,
                                                height: 46.w,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color.fromRGBO(
                                                          42, 139, 242, 0.15),
                                                      spreadRadius: 8,
                                                      blurRadius: 20,
                                                      offset: Offset(1, 7),
                                                    ),
                                                  ],
                                                  gradient:
                                                      const LinearGradient(
                                                    colors: [
                                                      Color(0xff7CB8F7),
                                                      Color(0xff2A8BF2),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                  ),
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                ),
                                                child: Center(
                                                  child: AppText(
                                                    text: "Cancel",
                                                    size: 25.w,
                                                    textAlign: TextAlign.center,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 171.31.w,
                                              height: 46.w,
                                              decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Color.fromRGBO(
                                                        42, 139, 242, 0.15),
                                                    spreadRadius: 8,
                                                    blurRadius: 20,
                                                    offset: Offset(1, 7),
                                                  ),
                                                ],
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xffFFB0E0),
                                                    Color(0xffF95858),
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                ),
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                              ),
                                              child: Center(
                                                child: AppText(
                                                  text: "Delete",
                                                  size: 25.w,
                                                  textAlign: TextAlign.center,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Gaps.vGap20,
                                    ],
                                  ),
                                );
                              },
                              child: Container(
                                width: 245.w,
                                height: 49.w,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(42, 139, 242, 0.15),
                                      spreadRadius: 8,
                                      blurRadius: 20,
                                      offset: Offset(1, 7),
                                    ),
                                  ],
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFFB0E0),
                                      Color(0xffF95858),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: AppText(
                                    text: "Clear chat history",
                                    size: 25.w,
                                    textAlign: TextAlign.center,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gaps.vGap30,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ChartTabScreen(),
    );
  }

  void close() {
    Navigator.of(context).pop();
  }
}
