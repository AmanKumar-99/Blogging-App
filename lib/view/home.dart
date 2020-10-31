import 'package:blog_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/createBlog');
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.symmetric(),
              child: UserAccountsDrawerHeader(
                //use the actual details and fill here
                accountEmail: Text("amankumar@email.com"),
                accountName: Text("abc"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/9.png'),
                ),
                onDetailsPressed: () {
                  // Use this for editing user detail including its profile picture
                  Navigator.pushNamed(context, '/account');
                },
              ),
              decoration: BoxDecoration(
                color: (Theme.of(context).brightness==Brightness.dark)?Colors.black26:Colors.deepPurple,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myBlogs');
              },
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.edit),
                title: Text('My Blogs'),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.cog),
                title: Text('Settings'),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.building),
                title: Text('About Us'),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.signOutAlt),
                title: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
