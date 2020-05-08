import 'package:flutter/material.dart';
import 'package:flutterwebtest/widgets/call_to_action/call_to_action.dart';
import 'package:flutterwebtest/widgets/centered_view.dart';
import 'package:flutterwebtest/widgets/course_details/course_details.dart';
import 'package:flutterwebtest/widgets/navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction(title: 'Join Course',),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
