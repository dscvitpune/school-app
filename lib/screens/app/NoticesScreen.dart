import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolApp/screens/app/widgets/NotificationItem.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: paddingM.h, right: paddingM.w, left: paddingM.w),
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
                      "Notice Board",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: black,
                            fontSize: headline5.ssp,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: spaceM.h * 3.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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
                        NotificationItem(
                          isAttachmentAvailable: false,
                          title: "Webinar on Artificial Intelligence",
                          subtitle:
                              "We are conducting webinar on AI technology on Saturday, 30 August, 2020. Attendance is compulsory",
                        ),
                        SizedBox(
                          height: spaceM.h,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
