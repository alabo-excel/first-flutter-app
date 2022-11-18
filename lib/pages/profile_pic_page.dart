import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/gaps.dart';
import '../routes/routes.dart';
import '../util/navigation_utils.dart';
import '../widgets/app_text.dart';
import '../widgets/image_loader.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicPage extends StatefulWidget {
  const ProfilePicPage({super.key});

  @override
  State<ProfilePicPage> createState() => _ProfilePicPageState();
}

class _ProfilePicPageState extends State<ProfilePicPage> {
  
  Future <void> _pickImage() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }

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
                LoadAssetImage(
                  "chitchat",
                  width: 230.84.w,
                ),
                Gaps.vGap50,
                GestureDetector(
                  onTap: () {
                    _pickImage();
                  },
                  child: LoadAssetImage(
                    "upload",
                    width: 230.84.w,
                  ),
                ),
                Gaps.vGap50,
                AppText(
                  size: 24.w,
                  text: 'Upload Profile Pic',
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: AppText(
                    size: 24.w,
                    text: 'Your Name',
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 518.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Please enter your name',
                      hintStyle: TextStyle(
                        fontSize: 24.w,
                      ),
                    ),
                  ),
                ),
                Gaps.vGap50,
                SizedBox(
                  width: 518.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigation.push(context, Routes.myCenter);
                    },
                    // ignore: prefer_const_constructors
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        shape: const StadiumBorder()),
                    child: AppText(
                      text: 'Enter Chitchat',
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
