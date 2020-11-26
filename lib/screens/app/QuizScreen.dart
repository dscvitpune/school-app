import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schoolApp/utils/constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizScreen extends StatelessWidget {
  static const String _title = 'Quiz Sec ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomPadding: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(child: MyStatelessWidget())),
    );
  }
}

class Mycard extends StatelessWidget {
  final Color colors;
  final String topic;
  final String marks;
  final String subject;
  final int status;
  Mycard(
    this.colors,
    this.topic,
    this.marks,
    this.subject,
    this.status,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
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
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          decoration: BoxDecoration(
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
            color: white,
            // borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.all(10.ssp),
          width: 200.0.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.w,
                  ),
                  new IconTheme(
                    data: new IconThemeData(color: colors, size: 30),
                    child: new Icon(Icons.event_note),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    subject,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: colors,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.ssp),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(children: <Widget>[
                SizedBox(width: 10.w),
                Text(
                  topic,
                  style: TextStyle(
                    fontSize: 20.ssp,
                  ),
                  textAlign: TextAlign.left,
                )
              ]),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10.w),
                  Text(
                    marks + ' marks',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.ssp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              status == 1
                  ? (FlatButton(
                      onPressed: null,
                      child: Row(
                        children: <Widget>[
                          new IconTheme(
                            data: new IconThemeData(color: Colors.orange),
                            child: new Icon(
                              Icons.play_circle_filled,
                              size: 40.ssp,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                                fontSize: 20.ssp, color: Colors.orange),
                          ),
                        ],
                      )))
                  : FlatButton(
                      onPressed: null,
                      child: Row(
                        children: <Widget>[
                          new IconTheme(
                            data: new IconThemeData(color: Colors.blue),
                            child: new Icon(
                              Icons.https,
                              size: 40.ssp,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'Upcoming..',
                            style:
                                TextStyle(fontSize: 15.ssp, color: Colors.blue),
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

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(10.ssp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: spaceM.h,
            ),
            Container(
              child: SvgPicture.asset(
                'assets/images/academics_illustration.svg',
                height: 200.0.h,
                width: 200.0.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(height: 20.h),
            Row(children: <Widget>[
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Upcoming Tests',
                style: TextStyle(
                  fontSize: 25.ssp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )
            ]),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(8.ssp),
              height: 250.0.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8.ssp),
                children: <Widget>[
                  Mycard(course_card_green, 'Fractions', '50', 'Maths', 1),
                  SizedBox(
                    width: spaceM.w,
                  ),
                  Mycard(course_card_orange, 'Grammar', '50', 'English', 1),
                  SizedBox(
                    width: spaceM.w,
                  ),
                  Mycard(course_card_red, 'Solids', '50', 'Science', 0),
                  SizedBox(
                    width: spaceM.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: spaceM.h * 2.h,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Past Scores',
                style: TextStyle(
                  fontSize: 25.ssp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )
            ]),
            Center(
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: 'Subject wise score'),
                  // Enable legend

                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Science', 35, Colors.blue),
                          SalesData('Maths', 28, Colors.pink),
                          SalesData('English', 34, Colors.purple),
                          SalesData('History', 32, Colors.green),
                          SalesData('Social Science', 40, Colors.green)
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        animationDuration: 1000,
                        pointColorMapper: (SalesData sales, _) =>
                            sales.segmentColor,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.segmentColor);

  final String year;
  final double sales;
  final Color segmentColor;
}
