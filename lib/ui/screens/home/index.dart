// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// App widgets
import 'package:timedbook/navigation/bottom/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigator();
  }
}