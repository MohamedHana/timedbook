// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Screens
import 'package:timedbook/ui/screens/today/index.dart';
import 'package:timedbook/ui/screens/reports/index.dart';

// App widgets
import 'package:timedbook/navigation/drawer/index.dart';

class NavItemObject {
  Widget screen;
  Icon navIcon;
  String title;
  String label;
  NavItemObject({this.screen, this.navIcon, this.title, this.label});
}

List<NavItemObject> navItems = [
  NavItemObject(
    screen: TodayScreen(),
    navIcon: Icon(Icons.today),
    title: 'Today\'s book',
    label: 'Today',
  ),
  NavItemObject(
    screen: ReportsScreen(),
    navIcon: Icon(Icons.insert_chart_outlined),
    title: 'Reports',
    label: 'Reports',
  ),
];

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  // Initial screen index for bottom navigator
  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navItems[_screenIndex].title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: navItems[_screenIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: navItems
        .map((navItem) => BottomNavigationBarItem(
            icon: navItem.navIcon,
            label: navItem.label,
          ))
        .toList(),
      currentIndex: _screenIndex,
      onTap: (i) => setState(() {
        _screenIndex = i;
      }),
      backgroundColor: Colors.grey[100],
      selectedItemColor: Colors.green,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
      unselectedItemColor: Colors.black45,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
      ),
    ),
      drawer: DrawerNavigator(),
    );
  }
}




