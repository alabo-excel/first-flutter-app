import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/pages/my_center_page.dart';

import 'package:sk/res/colors.dart';
import 'package:sk/widgets/image_loader.dart';

class ChartTabScreen extends StatefulWidget {
  const ChartTabScreen({super.key});

  @override
  State<ChartTabScreen> createState() => _ChartTabScreenState();
}

class _ChartTabScreenState extends State<ChartTabScreen> {
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      const MyCenterPage(),
    ];
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _selectPage,
      backgroundColor: Colors.white,
      unselectedItemColor: AppColors.grey4,
      selectedItemColor: AppColors.appMain,
      currentIndex: _selectedPageIndex,
      // type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: LoadAssetImage(
            "messaging",
            width: 40.w,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: LoadAssetImage(
            "contact",
            width: 40.w,
          ),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: LoadAssetImage(
            "user1",
            width: 40.w,
          ),
          label: 'Me',
        ),
      ],
    );
  }
}
