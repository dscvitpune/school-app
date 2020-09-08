import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/screens/app/widgets/CardView.dart';
import 'package:schoolApp/screens/app/widgets/NotificationItem.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:schoolApp/widgets/CustomAppBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: black,
                            fontWeight: FontWeight.w500,
                            fontFamily: '.SF UI Display',
                            fontSize: headline6.ssp,
                          ),
                    ),
                    SizedBox(
                      height: spaceS.h,
                    ),
                    Text(
                      "Shailesh! 👋",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontFamily: '.SF UI Display',
                            fontSize: headline5.ssp,
                          ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  GestureDetector(
                      onTap: () {
                        //TODO: Go to profile screen
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      )),
                ],
              ),
              SizedBox(
                height: (spaceM.h * 2.h),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingM.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardView(
                      onPress: () {
                        print("Attendance click");
                      },
                      title: "Attendance",
                      subTitle: "23/30",
                      progressValue: 0.84,
                      image: SvgPicture.asset(
                        'assets/images/attendance_illustration.svg',
                        height: 120.0.ssp,
                        width: 120.0.ssp,
                      ),
                    ),
                    SizedBox(
                      height: (spaceM.h * 2.h),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recent Notices",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                        color: black,
                                        fontSize: headline6.ssp,
                                        fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "View more",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    .copyWith(
                                        color: primaryColorDark,
                                        fontSize: subtitle2.ssp,
                                        fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: spaceM.h,
                          ),
                          NotificationItem(
                            title: "Anant Chaturdashi Holiday",
                            subtitle:
                                "The College will remain closed on Tuesday, 1st September, 2020 on account of Anant Chaturdashi.",
                          ),
                          SizedBox(
                            height: spaceM.h,
                          ),
                          NotificationItem(
                            title: "Exams are comming soon",
                            subtitle:
                                "MSE exam will be conducted on Friday, 15th September, 2020. Exam will be conducted online and on MCQ based of 30 marks.",
                          ),
                          SizedBox(
                            height: spaceM.h,
                          ),
                        ],
                      ),
                    ),
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
