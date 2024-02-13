import 'package:builtup/screens/privacypolicy.dart';
import 'package:builtup/screens/settings/aboutus.dart';
import 'package:builtup/screens/settings/help.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "About",
                style: TextStyle(color: Colors.black87),
              ),
              leading: Icon(
                Icons.info_outline,
                color: Colors.black87,
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black87,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                    //fullscreenDialog: true,
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.black87),
              ),
              leading: Icon(
                Icons.warning,
                color: Colors.black87,
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black87,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicy(),
                    //fullscreenDialog: true,
                  ),
                );
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              title: Text(
                "Help & Support",
                style: TextStyle(color: Colors.black87),
              ),
              leading: Icon(
                Icons.help_outline,
                color: Colors.black87,
                //  color: Colors.white,
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black87,
                //color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => HelpAndSupport(),
                    //fullscreenDialog: true,
                  ),
                );
              },
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
