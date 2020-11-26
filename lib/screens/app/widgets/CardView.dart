import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardView extends StatelessWidget {
  final String title, subTitle;
  final double progressValue;
  final Widget image;
  final VoidCallback onPress;

  const CardView(
      {Key key,
      this.title,
      this.subTitle,
      this.progressValue,
      this.image,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () {},
      child: Container(
        width: MediaQuery.of(context).size.width - (2.w * spaceM.w),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(
            Radius.circular(25.w),
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
              horizontal: paddingM.w, vertical: paddingL.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontFamily: '.SF UI Display',
                          fontSize: headline5.ssp,
                        ),
                  ),
                  SizedBox(
                    height: spaceM.h,
                  ),
                  Text(
                    subTitle,
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
                        width: 120.w,
                        child: LinearProgressIndicator(
                          minHeight: 6.h,
                          backgroundColor: lightGrey,
                          value: progressValue,
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
                    height: spaceM.w,
                  ),
                  onPress != null
                      ? Text(
                          "View details",
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                                color: primaryColorDark,
                                fontSize: subtitle2.ssp,
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      : Container(),
                ],
              ),
              Spacer(),
              image,
            ],
          ),
        ),
      ),
    );
  }
}
