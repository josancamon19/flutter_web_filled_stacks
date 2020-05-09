import 'package:flutter/material.dart';
import 'package:flutterwebtest/constants/app_colors.dart';

class CallToActionDesktopTablet extends StatelessWidget {
  final String title;

  const CallToActionDesktopTablet({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
