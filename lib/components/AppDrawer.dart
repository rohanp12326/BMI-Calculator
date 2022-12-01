import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/rohan_pic.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Created by Rohan Patil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.instagram),
            title: Text('@rohanp12326'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.linkedin),
            title: Text('https://www.linkedin.com/in/rohan-patil-91a5a8197'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.googlePay),
            title: Text('9167696768'),
          ),
        ],
      ),
    );
  }
}
