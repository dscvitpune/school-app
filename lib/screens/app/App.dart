import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolApp/screens/app/ClassScreen.dart';
import 'package:schoolApp/screens/app/DashboardScreen.dart';
import 'package:schoolApp/screens/app/QuizScreen.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Widget _getCurrentPage(index) {
    if (index == 0) {
      return DashboardScreen();
    } else if (index == 1) {
      return ClassScreen();
    } else if (index == 2) {
      return QuizScreen();
    } else {
      return Container();
    }
  }

  int _index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      body: _getCurrentPage(_index),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        height: 65.0.w,
        width: 65.0.w,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/calender');
            },
            child: Icon(Icons.calendar_today),
            backgroundColor: primaryColorDark,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.only(right: paddingM.h * 5.w, left: paddingS),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: _index,
            selectedItemColor: primaryColorDark,
            unselectedItemColor: lightGrey,
            onTap: _onItemTapped,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.widgets,
                    size: 28.h,
                    color: blue,
                  ),
                  title: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: blue,
                    ),
                  ),
                  icon: Icon(
                    Icons.widgets,
                    size: 28.h,
                  )),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.class_,
                    size: 28.h,
                    color: green,
                  ),
                  title: Text(
                    "Classes",
                    style: TextStyle(
                      color: green,
                    ),
                  ),
                  icon: Icon(
                    Icons.class_,
                    size: 28.h,
                  )),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.assignment,
                    size: 28.h,
                    color: orange,
                  ),
                  title: Text(
                    "Academics",
                    style: TextStyle(
                      color: orange,
                    ),
                  ),
                  icon: Icon(
                    Icons.assignment,
                    size: 28.h,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
