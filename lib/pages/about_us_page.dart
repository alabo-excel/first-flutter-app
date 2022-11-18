import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/gaps.dart';
import '../widgets/app_text.dart';
import '../widgets/image_loader.dart';
import 'chat_tab.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
                  text: 'About Us',
                  size: 28.sp,
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
                        width: 625.w,
                        child: Column(
                          children: [
                            Gaps.vGap30,
                            AppText(
                              text: "Our vision",
                              size: 28.sp,
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.center,
                            ),
                            Gaps.vGap30,
                            AppText(
                              text:
                                  'Lobortis quam suspendisse sed arcu viverra. Vitae rhoncus eget euismod duis vitae. Proin ornare turpis nisl at et viverra odio. Faucibus malesuada venenatis pellentesque aliquam condimentum semper faucibus id. Sit vitae feugiat cing tempus dictum fringilla donec. Mauris id interdum tempus lacus, etiam magna. Sagittis placerat nibh pellentesque vel vivamus. Purus tempor egestas risus elementum egestas volutpat vel fusce diam. Egestas mattis enim dolor egestas aliquam ipsum, at nulla.',
                              size: 20.sp,
                              height: 2,
                            ),
                            Gaps.vGap30,
                            LoadAssetImage(
                              "About",
                              width: 625.w,
                              height: 297.38.h,
                            ),
                            Gaps.vGap30,
                            AppText(
                              text:
                                  'Lobortis quam suspendisse sed arcu viverra. Vitae rhoncus eget euismod duis vitae. Proin ornare turpis nisl at et viverra odio. Faucibus malesuada venenatis pellentesque aliquam condimentum semper faucibus id. ',
                              size: 20.sp,
                              height: 2,
                            ),
                          ],
                        ),
                      ),
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
}
