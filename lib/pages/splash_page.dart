import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/util/navigation_utils.dart';
import 'package:sk/widgets/image_loader.dart';

import '../routes/routes.dart';
// import '../widgets/app_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetologin();
  }
  _navigatetologin()async{
    await Future.delayed(const Duration(milliseconds : 2000), () {});
    // ignore: use_build_context_synchronously
    Navigation.push(context, Routes.login);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Container(
        // decoration: ,
        child: const Center(child: LoadAssetImage("chitchat"),),
      ),
    );
  }
}
