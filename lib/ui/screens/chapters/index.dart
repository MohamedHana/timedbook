// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChaptersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapters"),
        backgroundColor: Colors.grey[100],
      ),
      body: Center(
        child: Text('Chapters page content!'),
      ),
    );
  }
}