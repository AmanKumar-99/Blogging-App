import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

enum Mode { dark, light }

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          FlatButton(
            onPressed: () {
              DynamicTheme.of(context).setBrightness(
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark);
            },
            child: ListTile(
              leading: FaIcon(FontAwesomeIcons.adjust),
              title: Text(
                'Change Theme',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Tap to change the theme'),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: FaIcon(FontAwesomeIcons.trash),
              title: Text(
                'Delete your account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
