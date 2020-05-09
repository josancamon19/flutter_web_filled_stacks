import 'package:flutter/material.dart';
import 'package:flutterwebtest/ui/home/home_content_dekstop.dart';
import 'package:flutterwebtest/ui/home/home_content_mobile.dart';
import 'package:flutterwebtest/widgets/centered_view.dart';
import 'package:flutterwebtest/widgets/navigation_bar.dart';
import 'package:flutterwebtest/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? NavigationDrawer() : null,
              body: CenteredView(
                child: Column(
                  children: <Widget>[
                    NavigationBar(),
                    Expanded(
                        child: ScreenTypeLayout(
                      mobile: HomeContentMobile(),
                      desktop: HomeContentDesktop(),
                    ))
                  ],
                ),
              ),
            ));
  }
}
