import 'package:flutter/material.dart';

import 'package:timedbook/ui/screens/splash/index.dart';
import 'package:timedbook/ui/screens/today/index.dart';
import 'package:timedbook/ui/screens/reports/index.dart';

class Routes {
  //static variables
  static const String splash = '/splash';
  static const String today = '/today';
  static const String reports = '/reports';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    today: (BuildContext context) => TodayScreen(),
    reports: (BuildContext context) => ReportsScreen(),
  };
}