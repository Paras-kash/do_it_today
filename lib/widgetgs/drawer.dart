import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[400],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: GestureDetector(
              onTap: () {},
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey[400]),
                margin: EdgeInsets.zero,
                accountName: Text(
                  'Paras Kashyap',
                  style: TextStyle(color: Colors.black38),
                ),
                accountEmail: Text(
                  'parasgithub@gmail.com',
                  style: TextStyle(color: Colors.black38),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/app_logo.png'),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(CupertinoIcons.add),
            title: Text('Add Notes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ],
      ),
    );
  }
}
