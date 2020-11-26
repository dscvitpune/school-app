import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolApp/screens/app/widgets/course_cards.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:schoolApp/widgets/CustomAppBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassScreen extends StatefulWidget {
  @override
  _ClassScreenState createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: Text(
                  "Class work",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF UI Display',
                        fontSize: headline5.ssp,
                      ),
                ),
                actions: <Widget>[
                  GestureDetector(
                      onTap: () {
                        //TODO: go to add new class
                      },
                      child: Icon(
                        Icons.add_box,
                        size: 34.ssp,
                        color: black,
                      )),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Course_Cards(
                        'assets/images/Red.png',
                        '9',
                        'Mar',
                        'Social Science',
                        course_card_red,
                        "Lab",
                        "Prof. Mihir Tale",
                        context),
                    Course_Cards(
                        'assets/images/Blue.png',
                        '1',
                        'Jan',
                        'Science',
                        course_card_blue,
                        "Theory",
                        "Prof. Sagar Wankhade",
                        context),
                    Course_Cards(
                        'assets/images/Green.png',
                        '17',
                        'May',
                        'Mathematics',
                        course_card_green,
                        "Theory",
                        "Dr. Varad Kulkarni",
                        context),
                    Course_Cards(
                        'assets/images/Orange.png',
                        '22',
                        'Jul',
                        'Chemistry',
                        course_card_orange,
                        "Theory",
                        "Prof. Anirudh Kolwadkar",
                        context),
                    Course_Cards(
                        'assets/images/Yellow.png',
                        '27',
                        'Apr',
                        'Physics',
                        course_card_yellow,
                        "Labs",
                        "Prof. Shailesh Kadam",
                        context),
                    Course_Cards(
                        'assets/images/Maroon.png',
                        '22',
                        'Jul',
                        'Sports',
                        course_card_marron,
                        "Practical",
                        "Prof. Shardul Inamdar",
                        context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
