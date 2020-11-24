import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bloggingapp/screens/about.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
class mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.symmetric(),
              child: Container(
                
                    padding: EdgeInsets.symmetric(vertical: 0.2),
                  
                child: UserAccountsDrawerHeader(
                  //use the actual details and fill here
                  accountEmail: Text(""),
                  accountName: Text("Blogging App", style: TextStyle(fontSize: 20),),
                  currentAccountPicture: CircleAvatar(
                    
                    backgroundImage: AssetImage('images/developer.png'),
                  
                    
                  ),
                  
                  
                ),
              ),
              decoration: BoxDecoration(

                color: (Theme.of(context).brightness==Brightness.dark)?Colors.black26:Colors.deepPurple,
                
              ),
            ),
            
            
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.building),
                title: Text('About Us', style: TextStyle(fontSize: 20),),
              ),
            ),

            FlatButton(
              onPressed: () {
                DynamicTheme.of(context).setBrightness(
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark);

              },
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.adjust),
                title: Text('Change Theme', style: TextStyle(fontSize: 20),),
              ),
            ),
            
          ],
        ),
      );
    
  }
}

      
    
  
