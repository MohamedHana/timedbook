import 'package:flutter/material.dart';

// Screens
import 'package:timedbook/ui/screens/splash/index.dart';
import 'package:timedbook/ui/screens/home/index.dart';
import 'package:timedbook/ui/screens/today/index.dart';
import 'package:timedbook/ui/screens/reports/index.dart';
import 'package:timedbook/ui/screens/days/index.dart';
import 'package:timedbook/ui/screens/chapters/index.dart';
import 'package:timedbook/ui/screens/lines/index.dart';
import 'package:timedbook/ui/screens/settings/index.dart';

class AppRouter {
  // Routes mapping
  static const String splash = '/splash';
  static const String home = '/home';
  static const String today = '/today';
  static const String reports = '/reports';
  static const String days = '/days';
  static const String chapters = '/chapters';
  static const String lines = '/lines';
  static const String settings = '/settings';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    home: (BuildContext context) => HomeScreen(),
    today: (BuildContext context) => TodayScreen(),
    reports: (BuildContext context) => ReportsScreen(),
    days: (BuildContext context) => DaysScreen(),
    chapters: (BuildContext context) => ChaptersScreen(),
    lines: (BuildContext context) => LinesScreen(),
    settings: (BuildContext context) => SettingsScreen(),
  };
}