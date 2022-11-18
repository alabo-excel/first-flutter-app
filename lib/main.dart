import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sk/pages/splash_page.dart';
import 'package:sk/routes/routes.dart';
import 'package:sk/util/navigation_utils.dart';

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Navigation.router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      builder: (context, child) {        
        return const MaterialApp(
          title: 'SK App',
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
        );
      },
    );
  }
}
