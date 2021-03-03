// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LinesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LinesScreenState();
}

class _LinesScreenState extends State<LinesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lines"),
        backgroundColor: Colors.grey[100],
      ),
      body: Center(
        child: Text('Lines page content!'),
      ),
    );
  }
}