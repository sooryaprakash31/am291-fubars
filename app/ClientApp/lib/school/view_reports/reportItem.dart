import 'package:flutter/material.dart';

import 'reportCard.dart';

class ReportsItem extends StatefulWidget {
  @override
  _ReportsItemState createState() => _ReportsItemState();
}

class _ReportsItemState extends State<ReportsItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //open the Month reports page with all days of a selected month
      },
      child: Card(
        color: Color.fromRGBO(93, 99, 108, 1),
        margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Month",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                  OutlineButton(
                    splashColor: Color.fromRGBO(97, 227, 236, 1),
                    textColor: Color.fromRGBO(97, 227, 236, 1),
                    color: Colors.white,
                    onPressed: () {},
                    child: Text("Show More"),
                  )
                ],
              ),
            ),
            ReportCard(),
            ReportCard(),
            ReportCard(),
            // ReportCard(
            //     widget.reports.numberOfStudents, widget.reports.menuServed),
            // ReportCard(
            //     widget.reports.numberOfStudents, widget.reports.menuServed),
          ],
        ),
      ),
    );
  }
}