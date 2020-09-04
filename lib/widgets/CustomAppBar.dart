import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoolApp/utils/constant.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leading;
  final String title;
  final List<Widget> actions;

  const CustomAppBar(
      {Key key, this.leading, @required this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            horizontal: paddingL.w - paddingS.w, vertical: paddingL.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leading ?? Container(),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontFamily: '.SF UI Display',
                    fontSize: headline6.ssp,
                  ),
            ),
            Spacer(),
            actions != null
                ? Row(
                    children: [...actions],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
