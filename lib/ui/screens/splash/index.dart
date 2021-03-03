// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart' as splashScreenPackage;

// Screens
import 'package:timedbook/ui/screens/home/index.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Launching the app 
  Future<Widget> launchFuture() async {
    // [TO-DO] Implement the app's launch business logic
    await Future.delayed(Duration(seconds: 1));

    return Future.value(new HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return new splashScreenPackage.SplashScreen(
      navigateAfterFuture: launchFuture(),
      title: new Text(
        'Timedbook',
        style: new TextStyle(fontWeight: FontWeight.w900, 
          fontSize: 40,
          color: Colors.green),
      ),
      backgroundColor: Colors.white,
      loaderColor: Colors.green,
    );
  }
}