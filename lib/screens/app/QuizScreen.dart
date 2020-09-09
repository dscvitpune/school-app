import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// This Widget is the main application widget.
class QuizScreen extends StatelessWidget {
  static const String _title = 'Quiz Sec ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MyStatelessWidget(),
    );
  }
}

class Mycard extends StatelessWidget {
  final MaterialColor colors;
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
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF4F6F8),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(10),
              width: 200.0,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    new IconTheme(
                      data:
                          new IconThemeData(color: Color(0xFF88C693), size: 30),
                      child: new Icon(Icons.event_note),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      subject,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF88C693), fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(children: <Widget>[
                  SizedBox(width: 10),
                  Text(
                    topic,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text(
                      marks + ' marks',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
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
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Start',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.orange),
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
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Upcoming..',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                            ),
                          ],
                        ))
              ]),
            )));
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: new SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network('https://i.ibb.co/GC152gc/givetest.png',
                  height: 230),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(height: 20),
            Row(children: <Widget>[
              SizedBox(
                width: 12,
              ),
              Text(
                'Upcoming Tests',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )
            ]),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(8),
                height: 250.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(8),
                    children: <Widget>[
                      Mycard(Colors.red, 'Fractions', '50', 'Maths', 1),
                      Mycard(Colors.red, 'Grammar', '50', 'English', 1),
                      Mycard(Colors.red, 'Solids', '50', 'Science', 0),
                    ])),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 12,
              ),
              Text(
                'Past Scores',
                style: TextStyle(
                  fontSize: 25,
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
