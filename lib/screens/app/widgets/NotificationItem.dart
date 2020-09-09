import 'package:flutter/material.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  final String title, subtitle;
  final bool isAttachmentAvailable;

  const NotificationItem(
      {Key key,
      @required this.title,
      @required this.subtitle,
      this.isAttachmentAvailable = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2.w * spaceM.w),
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
        padding:
            EdgeInsets.symmetric(horizontal: paddingM.w, vertical: paddingM.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: subtitle1.ssp,
                  ),
            ),
            SizedBox(
              height: spaceS.h,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: grey,
                    fontSize: subtitle2.ssp,
                  ),
            ),
            SizedBox(
              height: spaceS.h,
            ),
            isAttachmentAvailable
                ? Text(
                    "Click to view attachment",
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: primaryColorDark,
                          fontWeight: FontWeight.bold,
                          fontSize: subtitle2.ssp,
                        ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
