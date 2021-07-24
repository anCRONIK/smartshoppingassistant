import 'package:flutter/material.dart';

class ApplicationSideMenu extends StatelessWidget {
  const ApplicationSideMenu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(child: Text('Header Area')),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Messages'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
