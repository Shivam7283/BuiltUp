import 'package:builtup/Semester/sem3/subjects/Complex_Variables_Partial_Differential_Equations/optionsem3CVP.dart';
import 'package:builtup/Semester/sem3/subjects/Effective_Technical_Communication/optionsem3ETC.dart';
import 'package:builtup/Semester/sem3/subjects/Engineering_Thermodynamics/optionsem3ET.dart';
import 'package:builtup/Semester/sem3/subjects/Indian_Constitution/optionsem3IC.dart';
import 'package:builtup/Semester/sem3/subjects/Kinematics_Theory_of_Machine/optionsem3KTOM.dart';
import 'package:builtup/Semester/sem3/subjects/Material_Science_Metallurgy/optionsem3MSM.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem3Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject Sem 3"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Column(
                children: [
                  Text("Effective Technical Communication"),
                ],
              ),
              leading: Icon(Icons.code),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem3ETCoption(),
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
              title:
                  Text("Complex Variables and Partial Differential Equations"),
              leading: Icon(Icons.build_circle),
              trailing: Icon(Icons.forward),
              //Sem3CVPoption
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem3CVPoption(),
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
                "Indian Constitution",
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
                      builder: (context) => Sem3ICoption(),
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
              title: Text("Material Science and Metallurgy"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem3MSMoption(),
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
              title: Text("Engineering Thermodynamics"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem3EToption(),
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
              title: Text("Kinematics and Theory of Machine"),
              leading: Icon(Icons.alarm_on_rounded),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sem3KTOMoption(),
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
