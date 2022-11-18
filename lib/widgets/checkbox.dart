import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sk/widgets/image_loader.dart';

class CustomCheckBox extends StatelessWidget {
  bool value;
  // ValueChanged<bool?> onChanged;
  Function onChanged;
  CustomCheckBox({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          onChanged(!value);
        },
        child: Container(
          height: 26.67.w,
          width: 26.67.h,
          decoration: BoxDecoration(
            border: value
                ? Border.all(color: Colors.transparent)
                : Border.all(
                    width: 2, color: const Color(0xff4395E7).withOpacity(0.4)),
            borderRadius: BorderRadius.circular(5),
            color: value
                ? const Color(0xff4395E7).withOpacity(0.4)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.1),
            child:
                value ? LoadAssetImage("check", width: 11.83.w, height: 8.66.h,) : const SizedBox(),
          ),
        ),
      ),
    );
  }
}