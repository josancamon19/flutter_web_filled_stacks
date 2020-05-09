import 'package:flutter/material.dart';
import 'package:flutterwebtest/widgets/call_to_action/call_to_action.dart';
import 'package:flutterwebtest/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction(
              title: 'Join Course',
            ),
          ),
        )
      ],
    );
  }
}
