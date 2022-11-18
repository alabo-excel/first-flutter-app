import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/gaps.dart';
import '../widgets/app_text.dart';
import '../widgets/image_loader.dart';

class AddressBlacklistPage extends StatefulWidget {
  const AddressBlacklistPage({super.key});

  @override
  State<AddressBlacklistPage> createState() => _AddressBlacklistPageState();
}

class _AddressBlacklistPageState extends State<AddressBlacklistPage> {
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
                  text: 'Address book blacklist',
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
                              padding: EdgeInsets.symmetric(vertical: 15.h),
                              child: Row(
                                children: [
                                  LoadAssetImage(
                                    "Image",
                                    width: 72.w,
                                  ),
                                  Gaps.hGap16,
                                  AppText(
                                    text: 'Xain',
                                    size: 25.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 218, 213, 213),
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15.h),
                              child: Row(
                                children: [
                                  LoadAssetImage(
                                    "Image",
                                    width: 72.w,
                                  ),
                                  Gaps.hGap16,
                                  AppText(
                                    text: 'Xain',
                                    size: 25.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                            ),
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
    );
  }
}
