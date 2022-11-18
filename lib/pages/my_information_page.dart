import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/widgets/app_text.dart';

import '../res/gaps.dart';

class MyInformationPage extends StatefulWidget {
  const MyInformationPage({super.key});

  @override
  State<MyInformationPage> createState() => _MyInformationPageState();
}

class _MyInformationPageState extends State<MyInformationPage> {
  bool _obscureText = true;

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
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: AppText(
                    text: 'My information',
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
                        SizedBox(
                          width: 542.09.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gaps.vGap20,
                              AppText(
                                text: "Name",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller:
                                    TextEditingController(text: "Light Luke"),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    child: const Icon(Icons.edit),
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Nick Name",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller:
                                    TextEditingController(text: "Light "),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Position",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller: TextEditingController(
                                    text: "Ui Ux Designer "),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Gender",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 300.h,
                                        child: Center(
                                            child: Column(
                                          children: [
                                            Container(
                                              width: 588.w,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 218, 213, 213)),
                                                ),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: AppText(
                                                  text: 'Male',
                                                  size: 20.sp,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 588.w,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 218, 213, 213)),
                                                ),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: AppText(
                                                  text: 'Female',
                                                  size: 20.sp,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 588.w,
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 218, 213, 213)),
                                                ),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: AppText(
                                                  text: 'Cancel',
                                                  size: 20.sp,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromARGB(
                                              255, 218, 213, 213)),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 320.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // LoadAssetImage(
                                            //   "Profile",
                                            //   width: 48.w,
                                            // ),
                                            AppText(
                                              text: "Male",
                                              size: 24.w,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color:
                                            Color.fromARGB(255, 197, 187, 187),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Age",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller:
                                    TextEditingController(text: "35 Years"),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Birthday",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller:
                                    TextEditingController(text: "17 Jun 1986"),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                ),
                              ),
                              Gaps.vGap30,
                              AppText(
                                text: "Cellphone",
                                size: 20.w,
                                textAlign: TextAlign.left,
                              ),
                              TextFormField(
                                controller: TextEditingController(
                                    text: "+9584848 631964 "),
                                decoration: InputDecoration(
                                  // hintText: 'Please enter password',
                                  hintStyle: TextStyle(
                                    fontSize: 24.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
