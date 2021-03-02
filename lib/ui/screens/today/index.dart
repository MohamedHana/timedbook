
import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'Timed Book',
      home: Scaffold(
        body: const Center(
          child: const Text('Today screen'),
        ),
      ),
    );
  }
}