import 'package:flutter/material.dart';
import 'package:timedbook/constants/themes.dart';
import 'package:timedbook/constants/strings.dart';
import 'package:timedbook/ui/screens/splash/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeConfig.lightTheme,
      home: SplashScreen(),
    );
  }
}
