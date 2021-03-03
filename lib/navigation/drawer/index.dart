// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Text(
        'Timedbook',
        style: TextStyle(
          color: Colors.green,
          fontSize: 26,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text(
            'Day Types',
          ),
          leading: const Icon(Icons.date_range),
          onTap: () {
            Navigator.pushNamed(context, '/days');
          },
        ),
        ListTile(
          title: Text(
            'Chapters',
          ),
          leading: const Icon(Icons.menu_book),
          onTap: () {
            Navigator.pushNamed(context, '/chapters');
          },
        ),
        ListTile(
          title: Text(
            'Lines',
          ),
          leading: const Icon(Icons.reorder),
          onTap: () {
            Navigator.pushNamed(context, '/lines');
          },
        ),
        ListTile(
          title: Text(
            'Settings',
          ),
          leading: const Icon(Icons.settings),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
      ],
    );

    return Drawer(
      child: drawerItems,
    );
  }
}