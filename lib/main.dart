import 'package:flutter/material.dart';
import 'package:timedbook/constants/themes.dart';
import 'package:timedbook/constants/strings.dart';
import 'package:timedbook/ui/screens/splash/index.dart';

// AppRouter
import 'package:timedbook/router/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeConfig.lightTheme,
      home: SplashScreen(),
      routes: AppRouter.routes,
    );
  }
}
