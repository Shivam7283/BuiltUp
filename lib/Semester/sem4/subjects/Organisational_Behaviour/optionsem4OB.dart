import 'package:builtup/Semester/sem4/subjects/Organisational_Behaviour/papers/sem4OBpaper.dart';
import 'package:builtup/Semester/sem4/subjects/Organisational_Behaviour/papers/sem4OBquepaper.dart';
import 'package:builtup/Semester/sem4/subjects/Organisational_Behaviour/syllabus/syllabussem4OB.dart';

import 'package:builtup/impdemo.dart';
import 'package:builtup/screens/notavailable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem4OBoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organisational Behaviour"),
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
                    builder: (context) => syllabussem4OB(),
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
                    builder: (context) => sem4OBquepapers(),
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
