// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TodayScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Today screen',
        ),
      ),
    );
  }
}