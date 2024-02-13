import 'package:builtup/Semester/sem4/subjects/Manufacturing_Processes/papers/sem4MPpaper.dart';
import 'package:builtup/Semester/sem4/subjects/Manufacturing_Processes/papers/sem4MPquepaper.dart';
import 'package:builtup/Semester/sem4/subjects/Manufacturing_Processes/syllabus/syllabussem4MP.dart';

import 'package:builtup/impdemo.dart';
import 'package:builtup/screens/notavailable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem4MPoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manufacturing Processes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Text("Syllabus"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => syllabussem4MP(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text("Paper Solution"),
              leading: Icon(Icons.build_circle),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotAvail(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text(
                "Question Papers",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.build,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.forward,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sem4MPquepapers(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text("Video Learning"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotAvail(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
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
