import 'package:builtup/Semester/sem5/subjects/Dynamics_of_Machinery/optionsem5DM.dart';
import 'package:builtup/Semester/sem5/subjects/Heat_Transfer/optionsem5HT.dart';
import 'package:builtup/Semester/sem5/subjects/Manufacturing_Technology/optionsem5MT.dart';
import 'package:builtup/Semester/sem5/subjects/Oil_Hydraulics_Pneumatics/optionsem5OHP.dart';
import 'package:builtup/Semester/sem5/subjects/Operation_Research/optionsem5OR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem5Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject Sem 5"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Text("Heat Transfer"),
              leading: Icon(Icons.build_circle),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem5HToption(),
                    ));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            //Sem5HToption
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text("Operation Research"),
              leading: Icon(Icons.build_circle),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem5ORoption(),
                    ));
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
                "Dynamics of Machinery",
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
                      builder: (context) => Sem5DMoption(),
                    ));
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
              title: Text("Manufacturing Technology"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem5MToption(),
                    ));
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
              title: Text("Oil Hydraulics And Pneumatics"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem5OHPoption(),
                    ));
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
