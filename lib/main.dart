import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/screens/app/App.dart';
import 'package:schoolApp/screens/app/AttendanceScreen.dart';
import 'package:schoolApp/screens/app/CalenderScreen.dart';
import 'package:schoolApp/screens/app/ClassScreen.dart';
import 'package:schoolApp/screens/app/NoticesScreen.dart';
import 'package:schoolApp/screens/app/ProfileScreen.dart';
import 'package:schoolApp/screens/app/QuizScreen.dart';
import 'package:schoolApp/screens/auth/LoginScreen.dart';
import 'package:schoolApp/screens/auth/PhoneVerificationScreen.dart';
import 'package:schoolApp/screens/auth/SignupScreen.dart';
import 'package:schoolApp/utils/constant.dart';

void main() {
  runApp(MaterialApp(
      title: 'School App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/app': (context) => App(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/phoneVerify': (context) => PhoneVerificationScreen(),
        '/dashboard': (context) => App(),
        '/profile': (context) => ProfileScreen(),
        '/notices': (context) => NoticesScreen(),
        '/attendance': (context) => AttendanceScreen(),
        '/calender': (context) => CustomAgenda(),
      },
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 414, height: 736, allowFontScaling: true);
    print('Width: ${MediaQuery.of(context).size.width}');
    print('Height: ${MediaQuery.of(context).size.height}');
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: white,
        systemNavigationBarColor: white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return LoginScreen();
  }
}
