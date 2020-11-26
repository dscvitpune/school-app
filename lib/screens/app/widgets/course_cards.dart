import 'package:flutter/material.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Course_Cards(
    String image_path,
    String deadline_date,
    String deadline_month,
    String subject,
    Color card_color,
    String description,
    String teacherName,
    BuildContext context) {
  return GestureDetector(
    onTap: () {
      print("Pressed: " + subject);
    },
    child: Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w, bottom: 10.h),
          child: Container(
            decoration: BoxDecoration(
              color: dashboard_stats_background,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25.w),
                top: Radius.circular(25.w),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.w),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image_path,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(paddingS.ssp),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, left: 10.w),
                        child: Container(
                          height: 150.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    subject,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                          color: white,
                                          fontSize: headline5.ssp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    description,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: white,
                                          fontSize: subtitle1.ssp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 80.h,
                                  ),
                                  Text(
                                    teacherName,
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
                              Deadline_Card(
                                  deadline_date, deadline_month, context),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: spaceM.h),
      ],
    ),
  );
}

Widget Deadline_Card(
    String deadline_date, String deadline_month, BuildContext context) {
  return Column(
    children: [
      Card(
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(right: 10.w),
        child: Padding(
          padding: EdgeInsets.all(10.ssp),
          child: Column(
            children: [
              Text(
                deadline_date,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: black,
                      fontSize: headline6.ssp,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Left",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: black,
                      fontSize: subtitle1.ssp,
                    ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
