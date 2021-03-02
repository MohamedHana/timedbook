
import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timed Book',
      home: Scaffold(
        body: const Center(
          child: const Text('Reports screen'),
        ),
      ),
    );
  }
}