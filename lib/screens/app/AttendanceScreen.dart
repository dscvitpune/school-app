import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/screens/app/widgets/SubjectCard.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(25.w),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: darkBlack.withOpacity(0.04),
                      spreadRadius: 0,
                      blurRadius: 24,
                      offset: Offset(0, 8.h),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: paddingM.w, vertical: paddingM.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //TODO: Go Back
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.keyboard_backspace,
                              size: 28.w,
                            ),
                          ),
                          SizedBox(width: spaceM.w),
                          Text(
                            "Attendance Stats",
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: black,
                                      fontSize: headline5.ssp,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h * spaceM.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200.w,
                                child: Text(
                                  "All the attendance is monitored through online mode. If anyone have any issues about the stats please contact regarding faculty.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      .copyWith(
                                        color: darkBlack.withOpacity(0.6),
                                        fontFamily: '.SF UI Display',
                                        fontSize: subtitle2.ssp,
                                        letterSpacing: 0.6,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: spaceM.h,
                              ),
                              Text(
                                "23/30",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                      color: black,
                                      fontFamily: '.SF UI Display',
                                      fontSize: headline6.ssp,
                                    ),
                              ),
                              SizedBox(
                                height: spaceS.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 120.w,
                                    child: LinearProgressIndicator(
                                      minHeight: 6.h,
                                      backgroundColor: lightGrey,
                                      value: 0.84,
                                    ),
                                  ),
                                  SizedBox(
                                    width: spaceM.w,
                                  ),
                                  Text(
                                    "${0.84 * 100}%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: black,
                                          fontSize: subtitle1.ssp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: spaceM.w,
                              ),
                            ],
                          ),
                          SizedBox(width: 2.w * spaceM.w),
                          SvgPicture.asset(
                            'assets/images/attendance_illustration.svg',
                            height: 120.0.ssp,
                            width: 120.0.ssp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingM.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2.h * spaceM.h,
                        ),
                        Text(
                          "Subject wise attendance",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              color: black,
                              fontSize: headline6.ssp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2.h * spaceM.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SubjectCard(
                                  title: "Science",
                                  subtitle: "7/10",
                                  progressValue: 0.92,
                                  backgroundColor: course_card_blue,
                                ),
                                Spacer(),
                                SubjectCard(
                                  title: "Mathematics",
                                  subtitle: "8/7",
                                  progressValue: 0.99,
                                  backgroundColor: course_card_green,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: spaceM.h,
                            ),
                            Row(
                              children: [
                                SubjectCard(
                                  title: "Chemistry",
                                  subtitle: "6/9",
                                  progressValue: 0.91,
                                  backgroundColor: course_card_orange,
                                ),
                                Spacer(),
                                SubjectCard(
                                  title: "Physics",
                                  subtitle: "7/10",
                                  progressValue: 0.92,
                                  backgroundColor: course_card_yellow,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
