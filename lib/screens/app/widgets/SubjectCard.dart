import 'package:flutter/material.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectCard extends StatelessWidget {
  final String title, subtitle;
  final double progressValue;

  const SubjectCard({Key key, this.title, this.subtitle, this.progressValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 230.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.w),
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
        padding: EdgeInsets.only(
            top: paddingM.h,
            bottom: paddingM.h,
            left: paddingM.w,
            right: paddingM.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: spaceM.h,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: black,
                    fontSize: headline6.ssp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: spaceM.h),
            Spacer(),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.headline6.copyWith(
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
                  width: 70.w,
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
                  "${progressValue * 100}%",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: black,
                        fontSize: subtitle1.ssp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: spaceM.h * 2.h,
            ),
          ],
        ),
      ),
    );
  }
}