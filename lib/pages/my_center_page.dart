import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/widgets/app_text.dart';

import '../res/gaps.dart';
import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/image_loader.dart';
import 'chat_tab.dart';

class MyCenterPage extends StatefulWidget {
  const MyCenterPage({super.key});

  @override
  State<MyCenterPage> createState() => _MyCenterPageState();
}

class _MyCenterPageState extends State<MyCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gaps.vGap50,
                AppText(
                  text: 'My Center',
                  size: 28.w,
                  fontWeight: FontWeight.w600,
                ),
                Gaps.vGap50,
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
                        Stack(
                          children: [
                            LoadAssetImage(
                              'user',
                              width: 128.w,
                            ),
                            Container(
                              width: 128.w,
                              height: 128.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 46, 48, 46)
                                    .withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: 128.w,
                              height: 128.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LoadAssetImage(
                                    "edit-white",
                                    width: 15.68.w,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 200.w,
                          child: Row(
                            children: [
                              AppText(
                                text: "Nurrahma",
                                size: 36.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Gaps.hGap10,
                              GestureDetector(
                                onTap: () {
                                  nameDialog();
                                },
                                child: LoadAssetImage(
                                  "Edit",
                                  width: 21.w,
                                ),
                              )
                            ],
                          ),
                        ),
                        Gaps.vGap20,
                        SizedBox(
                          width: 240.w,
                          child: Row(
                            children: [
                              AppText(
                                text: "ID: 1235081385",
                                size: 28.sp,
                              ),
                              Gaps.hGap10,
                              LoadAssetImage(
                                "Document",
                                width: 21.w,
                              ),
                            ],
                          ),
                        ),
                        Gaps.vGap20,
                        SizedBox(
                          width: 180.w,
                          child: Row(
                            children: [
                              LoadAssetImage(
                                "Code",
                                width: 48.w,
                              ),
                              Gaps.hGap10,
                              AppText(
                                text: "QR Code",
                                size: 28.sp,
                              ),
                            ],
                          ),
                        ),
                        Gaps.vGap50,
                      ],
                    ),
                  ),
                ),
                Gaps.vGap50,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: 702.w,
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigation.push(context, Routes.myInformation);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 300.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    LoadAssetImage(
                                      "Profile",
                                      width: 48.w,
                                    ),
                                    AppText(
                                      text: "My information",
                                      size: 28.w,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 197, 187, 187))
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigation.push(context, Routes.accountSettings);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 320.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    LoadAssetImage(
                                      "Setting",
                                      width: 48.w,
                                    ),
                                    AppText(
                                      text: "Account settings",
                                      size: 28.w,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 197, 187, 187))
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigation.push(context, Routes.aboutUs);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 220.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    LoadAssetImage(
                                      "Info Circle",
                                      width: 48.w,
                                    ),
                                    AppText(
                                      text: "About us",
                                      size: 28.w,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 197, 187, 187))
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (contex) => AlertDialog(
                                title: AppText(
                                  text: 'Sign out',
                                  size: 24.sp,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w500,
                                ),
                                content: AppText(
                                  text: 'Are you sure want to signout?',
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
                                              gradient: const LinearGradient(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 210.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    LoadAssetImage(
                                      "Logout",
                                      width: 48.w,
                                    ),
                                    AppText(
                                      text: "Sign out",
                                      size: 28.w,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              // const Icon(Icons.arrow_forward_ios,
                              //     color: Color.fromARGB(255, 197, 187, 187))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const ChartTabScreen(),
    );
  }

  void nameDialog() => showDialog(
        context: context,
        builder: (contex) => AlertDialog(
          title: AppText(
            text: 'Edit Name',
            size: 24.sp,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
          ),
          content: TextFormField(
            decoration: InputDecoration(
              hintText: 'Name',
              hintStyle: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          text: "Close",
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
                          color: Color.fromRGBO(42, 139, 242, 0.15),
                          spreadRadius: 8,
                          blurRadius: 20,
                          offset: Offset(1, 7),
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff7CB8F7),
                          Color(0xff2A8BF2),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: AppText(
                        text: "Update",
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
  void close() {
    Navigator.of(context).pop();
  }
}
