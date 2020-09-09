import 'package:flutter/material.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
              top: paddingL.h, right: paddingM.w, left: paddingM.w),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      //TODO: Go Back
                      print("Go back");
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 28.w,
                    ),
                  ),
                  SizedBox(width: spaceM.w),
                  Text(
                    "Your Profile",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: black,
                          fontSize: headline5.ssp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.exit_to_app,
                    size: 28.w,
                    color: black,
                  ),
                ],
              ),
              SizedBox(
                height: spaceM.h * 5.h,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - (3.w * spaceM.w),
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
                    child: Column(
                      children: [
                        Transform(
                          transform:
                              Matrix4.translationValues(0.0, -40.0.h, 0.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 55.ssp,
                                backgroundColor: white,
                                child: CircleAvatar(
                                  radius: 50.ssp,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.jpg'),
                                ),
                              ),
                              SizedBox(
                                height: spaceM.h,
                              ),
                              Text(
                                "SHAILESH KADAM",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      color: black,
                                      fontSize: headline5.ssp,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: spaceS.h / 2.h,
                              ),
                              Text(
                                "shailesh.kadam19@vit.edu",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      color: black,
                                      fontSize: subtitle1.ssp,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: paddingM.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _DetailsRow(
                                title: "Registration number:",
                                subtitle: "11920192",
                              ),
                              _DetailsRow(
                                title: "Phone number:",
                                subtitle: "+918446842249",
                              ),
                              _DetailsRow(
                                title: "Class:",
                                subtitle: "TYIT-A",
                              ),
                              _DetailsRow(
                                title: "Address:",
                                subtitle:
                                    "Flat B-101, Ambar park society, near Sinhgad college, Katraj, Ambegaon BK- 411046",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: spaceM.h,
                        ),
                        Container(
                          width: 100.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            color: darkBlack.withOpacity(0.06),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: spaceM.h,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    right: 20.w,
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                          color: primaryColorDark,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "25",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: white,
                                fontSize: subtitle1.ssp,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailsRow extends StatelessWidget {
  final String title, subtitle;

  const _DetailsRow({Key key, @required this.title, @required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: black,
                    fontSize: subtitle1.ssp,
                  ),
            ),
            Spacer(),
            Container(
              width: 150.w,
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: black,
                      fontSize: subtitle1.ssp,
                      fontWeight: FontWeight.bold,
                    ),
                softWrap: true,
                maxLines: 6,
              ),
            ),
          ],
        ),
        SizedBox(
          height: spaceM.h + spaceS.h,
        ),
      ],
    );
  }
}
