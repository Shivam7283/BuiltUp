import 'package:builtup/Semester/sem4/subjects/Fluid_Mechanics_Hydraulics_Machines/optionsem4FMHM.dart';
import 'package:builtup/Semester/sem4/subjects/Fundamentals_of_Machine_Design/optionsem4FMD.dart';
import 'package:builtup/Semester/sem4/subjects/Manufacturing_Processes/optionsem4MP.dart';
import 'package:builtup/Semester/sem4/subjects/Mechanical_Measurement_Metrology/optionsem4FMMM.dart';
import 'package:builtup/Semester/sem4/subjects/Organisational_Behaviour/optionsem4OB.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem4Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject Sem 4"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Column(
                children: [
                  Text("Mechanical Measurement and Meteorology"),
                ],
              ),
              leading: Icon(Icons.code),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem4MMMoption(),
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
              title: Text("Fluid Mechanics and Hydraulics Machines"),
              leading: Icon(Icons.build_circle),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem4FMHMoption(),
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
                "Fundamentals of Machine Design",
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
                      builder: (context) => Sem4FMDoption(),
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
              title: Text("Manufacturing Processes"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem4MPoption(),
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
              title: Text("Organisational Behaviour"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem4OBoption(),
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
