import 'package:flutter/material.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectCard extends StatelessWidget {
  final String title, subtitle;
  final double progressValue;
  final Color backgroundColor;
  final Widget icon;
  const SubjectCard(
      {Key key,
      this.title,
      this.subtitle,
      this.progressValue,
      this.backgroundColor,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 230.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? black,
        borderRadius: BorderRadius.all(
          Radius.circular(20.w),
        ),
        boxShadow: [
          BoxShadow(
            color: darkBlack.withOpacity(0.15),
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
                    color: white,
                    fontSize: headline6.ssp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: spaceM.h),
            icon ?? Container(),
            Spacer(),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: white,
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
                    valueColor: AlwaysStoppedAnimation<Color>(white),
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
                        color: white,
                        fontSize: subtitle1.ssp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: spaceM.h,
            ),
          ],
        ),
      ),
    );
  }
}
